#! Installing Packages
# navigate to your home directory, verfy with pwd
### Let's cover up, how to use the package manager on Debian-based distributions
# Package files are commonly installed by downloading them directly from repositories located on Internet servers. The Debian repositories contain more than 65,000 different packages of software. Before installing a package, it is good practice to use the refresh the list of available packages using the "apt-get update" command.
sudo apt-get update


[azureuser@CloudEssentialsRedHat01 ~]$ sudo dnf check-update
Last metadata expiration check: 2:36:02 ago on Wed 30 Sep 2026 12:25:09 AM UTC.
[azureuser@CloudEssentialsRedHat01 ~]$ sudo dnf update -y
Last metadata expiration check: 2:38:10 ago on Wed 30 Sep 2026 12:25:09 AM UTC.
Dependencies resolved.
Nothing to do.
Complete!


#? Step 2
# Installing Packages
# Once you've have update the repository, you can proceed to install the package with the apt-get install command:
sudo apt-get install cowsay
cowsay your_name_here # Send an SS of this command output

sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y
sudo dnf check-update
sudo dnf install cowsay -y
cowsay "It works now! 🐄"
cowsay "It works now! "


#? Step 3
sudo apt-get update
sudo apt-get upgrade
# Updating Packages
# The apt-get install command can also update a package, if that package is installed and a newer version is available. If the package is not already on the system, it would be installed; if it is on the system, it would be updated.
# Updating all packages of the system should be done in two steps. First, update the cache of all packages available with apt-get update. Second, execute the apt-get upgrade command and all packages and dependencies will be updated.



[azureuser@CloudEssentialsRedHat01 ~]$ sudo dnf check-update
Last metadata expiration check: 0:03:16 ago on Wed 30 Sep 2026 03:07:48 AM UTC.
[azureuser@CloudEssentialsRedHat01 ~]$ sudo dnf check-upgrade
Last metadata expiration check: 0:03:18 ago on Wed 30 Sep 2026 03:07:48 AM UTC.


#? Step 4
sudo apt-get remove cowsay
sudo apt-get purge cowsay
# Removing Packages
# The apt-get command is able to either remove or purge a package. The difference between the two is that purging deletes all package files, while removing deletes all but the configuration files for the package.
# An administrator can execute the apt-get remove command to remove a package or the apt-get purge command to purge a package completely from the system.

Action	Ubuntu	✅ Red Hat	
Remove package	sudo apt-get remove cowsay	|| sudo dnf remove cowsay -y	
Purge package	sudo apt-get purge cowsay	|| sudo dnf remove cowsay -y	
Remove leftover deps	sudo apt-get autoremove	|| sudo dnf autoremove -y	