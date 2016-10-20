/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Set;
import uk.ac.dundee.computing.aec.instagrim.lib.AeSimpleSHA1;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;
import uk.ac.dundee.computing.aec.instagrim.stores.ProfilePage;
import java.util.UUID;
import java.util.LinkedList;

/**
 *
 * @author Administrator
 */
public class User {
    Cluster cluster;
    public User(){
        
    }
    
    public boolean RegisterUser(String first_name, String last_name, String username, String Password, String emailAddress){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("instagrim");
        Set<String> email = new HashSet<>();
        email.add(emailAddress);
        PreparedStatement ps = session.prepare("insert into userprofiles (first_name,last_name,login,password,email) Values(?,?,?,?,?)");
       
        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        first_name, last_name, username,EncodedPassword,email));
        //We are assuming this always works.  Also a transaction would be good here !
        
        return true;
    }
    
    public boolean IsValidUser(String username, String Password){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select password from userprofiles where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        if (rs.isExhausted()) {
            System.out.println("No Images returned");
            return false;
        } else {
            for (Row row : rs) {
               
                String StoredPass = row.getString("password");
                if (StoredPass.compareTo(EncodedPassword) == 0)
                    return true;
            }
        }
   
    
    return false;  
    }
    
     public ProfilePage getUserProfile(String user)
     {
        Session session = cluster.connect("instagrim");
       PreparedStatement ps = session.prepare("select login, first_name, last_name, email from userprofiles where login = ?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        user));
        session.close();
        
        ProfilePage profile = null;
        
        if (rs.isExhausted())
        {
            System.out.println("No profiles returned");
            return null;
        } 
        else {
            for (Row row : rs)
            {
                profile = new ProfilePage();
                String username = row.getString("login");
                String firstname = row.getString("first_name");
                String lastname = row.getString("last_name");
                Set<String> email = row.getSet("email", String.class);
                
                
                profile.setUsername(username);
                profile.setFirstname(firstname);
                profile.setLastname(lastname);
                profile.setEmail(email);
                
            }
        }
        
           
        return profile;
     }
     
     public LinkedList<ProfilePage> userProfiles()
     {
         LinkedList<ProfilePage> profilePages = new LinkedList<>();
         Session session = cluster.connect("instagrim");
         ResultSet rs = null;
         rs = session.execute ("select login, first_name, last_name from userprofiles");
         if (rs.isExhausted())
         {
             return null;
         }
         
         else
         {
             for (Row row : rs)
            {
                ProfilePage profile = new ProfilePage();
                String username = row.getString("login");
                String firstname = row.getString("first_name");
                String lastname = row.getString("last_name");
                
                profile.setUsername(username);
                profile.setFirstname(firstname);
                profile.setLastname(lastname);
                
                profilePages.add(profile);
            }
         }
         return profilePages;
     }

       public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }

    
}
