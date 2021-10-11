node default {
  file {'/root/README':
  ensure => file,
  content => 'This is a readme, this is a test',
  owner => 'root',
  }
} 
