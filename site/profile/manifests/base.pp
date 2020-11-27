class profile::base {

   include rsyslog
   include rsyslog::configin
   include profile::ssh_server
   user { 'admin':
     ensure => present,
   }
  
   
}
