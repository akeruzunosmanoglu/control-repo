class profile::base {

   include rsyslog
   include rsyslog::config
   user { 'admin':
     ensure => present,
   }
  
   
}
