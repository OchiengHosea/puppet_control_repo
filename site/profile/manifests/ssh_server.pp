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
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6axLJhsvjWAALIt9LlvnXZZoOsT8pv+LZ0m+zfjyHkLX9lRO6D7odyV21MLJJBegut4meU7dqYh0oYDLQK1IeukC6cXe0DO9DsTq6dUM3/pGNVIlpJOTpj9s7xMcYpiSgtzZWNGRmiqcv54SxvBn/S6FSLS3D0g/AcezehBAwyPu2LYgtZZ+jVRobDk8k/3tLIEU/k4bELFn5w4kL4QCkiKldlYvt9/hH+7ffa0KfEmR7YmI+n+qqQBE+YfQm1AuT+ZeLn9+kVz8pF+thYN434TQKJ4wqB2jCn/ByoVllONt9pa/34mWAG/4nvRcy0ewZ/MsaVZKt7Bn0XjwaHBLD',
  }
}
