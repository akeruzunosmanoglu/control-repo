class profile::agent_nodes {
   include dockeragent
   dockeragent::node {'web.network.lan':}
   dockeragent::node {'db.network.lan':}

}
