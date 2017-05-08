Ansible-role-cvmfs-server
=========

Ansible role to install CernVM FS Server.

To Install CernVM FS Client: https://github.com/mtangaro/ansible-role-cvmfs-client
To Create a CernVM Replica: https://github.com/mtangaro/ansible-role-cvmfs-replica

Despite this role has been create to be  general, it is used to create Galaxy Reference Data.
To populate Stratum 0 

Requirements
------------

Python is required on host to run ansible: sudo apt-get install python

The apt ansible module requires the following packages on host to run:

- python-apt (python 2)
- python3-apt (python 3)
- aptitude

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: ansible-role-cvmfs-server }

License
-------

Apache2

Reference
---------

Official cvmfs documentation: http://cvmfs.readthedocs.io/en/stable/cpt-repo.html

NIKHEF documentation: https://wiki.nikhef.nl/grid/Adding_a_new_cvmfs_repository
