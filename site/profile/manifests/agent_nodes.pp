class profile::agent_nodes {
   include dockeragent
   dockeragent::node {'web.network.lan':}
   dockeragent::node {'db.network.lan':}
   dockeragent::node {'minetest.network.lan':}
   
   host {'web.network.lan':
     ensure => present,
     ip => '172.18.0.2',
    }
    host {'db.network.lan':
     ensure => present,
     ip => '172.18.0.3',
    }

}
