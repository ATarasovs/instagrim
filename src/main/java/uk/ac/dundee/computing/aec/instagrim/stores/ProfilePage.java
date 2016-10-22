/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.stores;

import java.util.Set;
import java.util.UUID;

/**
 *
 * @author Aleksandr
 */
public class ProfilePage {
    String username = null;
    String firstname = null;
    String lastname = null;
    Set<String> email = null;
    UUID profilePicture = null;

public void ProfilePage()
{

}

public void setUsername(String username)
{
    this.username = username;
}

public String getUsername()
{
    return username;
}


public void setFirstname(String firstname)
{
    this.firstname = firstname;
}

public String getFirstname()
{
    return firstname;
}

public void setLastname(String lastname)
{
    this.lastname = lastname;
}

public String getLastname()
{
    return lastname;
}

public void setEmail(Set<String> email)
{
    this.email = email;
}

public Set<String> getEmail()
{
    return email;
}

public void setUserPicture(UUID profilePicture)
{
    this.profilePicture = profilePicture;
}

public UUID getUserPicture()
{
    return profilePicture;
}


}