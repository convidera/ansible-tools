# ansible-ssh
Connect to Ansible hosts using the Ansible inventory.
1. ansible-ssh uses the local ansible hosts file normally in /etc/ansible/hosts
2. ansible-ssh-oc uses the dynamic inventory generated from orchestrator by connecting to the orchestrator server over ssh (you need ssh access to the orchestrator forge user to use this script) 


#requirements
python,
ansible,
pyperclip (to copy sudo pw into clipboard when connecting
https://github.com/asweigart/pyperclip needs to be installed over the python package manager pip.)

**Usage**

    ansible-ssh PATTERN [COMMAND]
or
    ansible-ssh-oc
    
Where PATTERN can be the name of a single host as specified in you inventory files, 
a group name, or regular expression. In other words, I just pass the given pattern 
to Inventory.get\_hosts() and let Ansible figure it out. 
When PATTERN matches multiple hosts, it lets you connect to all of them sequentially.
When COMMAND is present, it gets executed just as it would have been using `ssh HOST COMMAND`.

# expermiental sshfs mounter
mounts remote folder over sshfs in lokal folder

    ansible-ssfs PATTERN
    
    ansibke-oc-sshfs PATTERN

mounts remote folder in userhomefolder/SERVER_MOUNTS/ 

