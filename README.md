Indigo-dc.cvmfs-server
=========================

Ansible role to install CernVM FS Server.

To Install CernVM FS Client: https://github.com/indigo-dc/ansible-role-cvmfs-client

To Create a CernVM Replica: https://github.com/mtangaro/ansible-role-cvmfs-replica (on-going)

This role has been create to be general, but it is used to create Galaxy Reference Data read-only repository. To populate Stratum Zero repository with Reference data: https://github.com/indigo-dc/Reference-data-galaxycloud-repository

### Development

- S3 support and squid proxy server support is on-going.

Requirements
------------

Python is required on host to run ansible: sudo apt-get install python

The apt ansible module requires the following packages on host to run:

- python-apt (python 2)

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: indigo-dc.cvmfs-server }

License
-------

Apache Licence v2
http://www.apache.org/licenses/LICENSE-2.0

Reference
---------

Official cvmfs documentation: http://cvmfs.readthedocs.io/en/stable/cpt-repo.html

NIKHEF documentation: https://wiki.nikhef.nl/grid/Adding_a_new_cvmfs_repository

Author Information
------------------

Marco Tanagaro (ma.tangaro_at_ibbe.cnr.it)
