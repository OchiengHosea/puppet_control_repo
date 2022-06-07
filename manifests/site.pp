node default {
  file{'/root/README':
    ensure => file,
    content => 'THis is a content',
    owner => 'root',
  }
}
