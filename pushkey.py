#
# This program will attempt to push a local SSH key to a server
#

import os

username = os.environ['USER']
keydir   = os.environ['HOME'] + "/.ssh/"
keyname  = "id_rsa.pub"
keyfqn   = keydir + keyname
pwd = "Xlerb969!"

remhost="store.donbriggs.ninja"
sshuid = username + "@" + remhost


#
# Check if the key that we want to send exists
#
def key_exists(keyfqn):
    return True


#
# Set remote host
#
def set_remote_host(remhost):
    return remhost


#
# Push local key to remote server
#
def push_key():
    return True 


#
# Create a Bash alias to SSH to server, and save
# it in the .bash_aliases file.
#
def create_bash_alias():
    return True


######################################################################
#                        Main function
######################################################################

if key_exists(keyfqn) :
    print("Key found.")
else:
    print("ERROR: Key not found. Exiting")
