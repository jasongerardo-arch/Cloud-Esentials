#! Making a File Private
# Objective: Change permissions on a file, such that others are not able to read the file.
# navigate to your home directory, verfy with pwd

[azureuser@CloudEssentialsRedHat01 ~]$ pwd
/home/azureuser

        
#? Step 1
# Create the directory /tmp/username, if it does not already exist. For example, if your username is elvis, create the directory /tmp/elvis.

[azureuser@CloudEssentialsRedHat01 ~]$ cd /tmp/
[azureuser@CloudEssentialsRedHat01 tmp]$ ls
azureuser                                                                    systemd-private-f02e33baad844c0191490993a6ad6867-kdump.service-48ITpX
Fonseca                                                                      systemd-private-f02e33baad844c0191490993a6ad6867-systemd-logind.service-A85Cu8
systemd-private-f02e33baad844c0191490993a6ad6867-chronyd.service-8wbo2p      systemd-private-f02e33baad844c0191490993a6ad6867-systemd-resolved.service-vmZKg0
systemd-private-f02e33baad844c0191490993a6ad6867-dbus-broker.service-dr5E8h
[azureuser@CloudEssentialsRedHat01 tmp]$ mkdir Azureuser

#? Step 2
# Create a simple list of resolutions in the file /tmp/username/resolutions.txt. You may use a text editor, your file from the previous lesson's exercise if it is still available, or simply create a new one.

echo "I need to slow down a bit more, 
If I do not I might get to tired" > /tmp/Azureuser/resolutions.txt

#? Step 3
# Permissions on a newly created file allow all users on the system to read the file. Assume that you want to keep your resolutions private. 
# Modify the file's permissions, such that read access for others is removed.

[azureuser@CloudEssentialsRedHat01 Azureuser]$ ls -l
total 4
-rw-r--r--. 1 azureuser azureuser 66 Sep 30 02:48 resolutions.txt
[azureuser@CloudEssentialsRedHat01 Azureuser]$ chmod o-r resolutions.txt
[azureuser@CloudEssentialsRedHat01 Azureuser]$ ls -l
total 4
-rw-r-----. 1 azureuser azureuser 66 Sep 30 02:48 resolutions.txt

#? Step 4
# Using one of your alternate accounts, confirm that other users on the system are not able to read your resolutions.

# How does this differ from the previous Lesson's Exercise?

#? End of Exercise
# Let's wait for you peers to finish, and discuss with your instructor the results of the lab



mkdir 