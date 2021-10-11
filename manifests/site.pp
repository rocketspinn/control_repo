node default {
  file {'/root/README':
  ensure => file,
  content => 'This is a readme','This is a test',
  }
} 
