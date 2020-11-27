class profile::base {

   include rsyslog
   include rsyslog::config
   include profile::ssh_server
   user { 'admin':
     ensure => present,
   }
  
   
}
