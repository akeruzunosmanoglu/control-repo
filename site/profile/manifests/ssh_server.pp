class profile::ssh_server (
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true'
  }
  ssh_authorized_key { 'root@pup-m.network.lan':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key  =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQDyYFLvxpJdqMSdCrP9WyyO1ThfxzOylvcvGiA5vsCBrThscT6MszLq1xlKwMdfaf1hE/aY/2+OHV2JwRBntHPGxtRnIQMzJnovID20Z5591+LIggdDPrtHHKru0y4QBx685I77x+asB5sKia0LsjI+zhtP3jnrWxkwQxVFCT1t+9gSCsKIJaA+j+eYKBokmTn8oil8QLUY3TVQaVfrTnUHZQiW4IHsZZ+GJfZczXaWuQ3sRoK7xM8/+DnuZYXwcaL3NIQMxoJTao2yyNmn+FNV9vs5muL+KQciCe//KXmqOoPz6X1Nc7vDsBTaQFrAJS29b9bMadY/EEE8+C7HpLXN',
  
  }
)
