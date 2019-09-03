# puppet-module-nsswitch

Puppet module to manage nsswitch that optionally allows for LDAP.

===

# Compatibility

This module has been tested to work on the following systems with Puppet
v3 (with and without the future parser), v4, v5 and v6 with the ruby
versions associated with those releases. See `.travis.yml` for an exact
matrix.


  * Debian 6
  * EL 5
  * EL 6
  * EL 7
  * Solaris 10
  * Suse

===

# Parameters

config_file
-----------
Path to configuration file.

- *Default*: `/etc/nsswitch.conf`

passwd
----------
String or Array accept values like compat, ldap, file or db

     
shadow
----------
String or Array accept values like compat, ldap, file or db

     
group
----------
String or Array accept values like compat, ldap, file or db

      
gshadow
----------
String or Array accept values like compat, ldap, file or db

    
sudoers
----------
String or Array accept values like compat, ldap, file or db

    
hosts
----------
String or Array accept values like compat, ldap, file or db

      
bootparams
----------
String or Array accept values like compat, ldap, file or db

 
netmasks
----------
String or Array accept values like compat, ldap, file or db

   
networks
----------
String or Array accept values like compat, ldap, file or db

   
ethers
----------
String or Array accept values like compat, ldap, file or db

     
protocols
----------
String or Array accept values like compat, ldap, file or db

  
rpc
----------
String or Array accept values like compat, ldap, file or db

        
services
----------
String or Array accept values like compat, ldap, file or db

   
netgroup
----------
String or Array accept values like compat, ldap, file or db

   
publickey
----------
String or Array accept values like compat, ldap, file or db

  
automount
----------
String or Array accept values like compat, ldap, file or db

  
aliases
----------
String or Array accept values like compat, ldap, file or db

    
ipnodes
----------
String or Array accept values like compat, ldap, file or db

    
printers
----------
String or Array accept values like compat, ldap, file or db

   
auth_attr
----------
String or Array accept values like compat, ldap, file or db

  
prof_attr
----------
String or Array accept values like compat, ldap, file or db

  
project
----------
String or Array accept values like compat, ldap, file or db

    
