node default { 
  file { '/root/README':
  content =>  'This is a readme',
  owner   =>  'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
  ensure  => file,
  content => $fqdn,
  }
}

nodes /^web/ {
  include role::app_server
}

nodes /^db/ {
include role::db_server 
}
