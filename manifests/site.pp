node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
   }
 }
   
node 'pup-m.network.lan' {
  include role::master_server
  include stdlib
  file { '/root/README':
    ensure => file,
    content => "welcome to  ${fqdn}\n server",
  }
  include role::minecraft_server
}


node 'minetest.network.lan' {
  include role::minecraft_server
}

node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
