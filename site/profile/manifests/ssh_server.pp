class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDgPFBo/TsyL3N1R8QliG9v7xNsgUybKIDuZLxhS51IaR+SXpUehpdrZcZj3sXVCntSrE9zt4qtAhWrK3NI1bOvd449zBTFevzMYEKLw7tS3uiQyeYVQDHC1TLOR2mxN0I8dl6aDK8g5OIaO7WXFX2kVXwA7gLYvdMyt/lU56YsvdKokWNzwQaxOQjdJ75/UUTxXs0FUvcZepT1oYWeUhuKdxgGvZglNNQ5i5uF1fl1dg/I5n3x4CGI/1f/oGUN90PZsajNH5yMuQgRKlCv6J0Zv9EdcnPFo9Z228pvWuVRc4c8q1+V+CpPCdTQNDYWkYKT9Wlc/wsNyX/9MY+9q1Zz',
  }  
}
