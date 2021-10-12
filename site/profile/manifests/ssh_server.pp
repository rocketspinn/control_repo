class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    ensure => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm:
    ensure => present,
    user => 'root'
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDjcgUgkam58jDQbvjSp0AMHRnaB+avxguUQWbbmbv+aThwEf/KjQf9uZR3QgwF8vMs0jcHZtRgwioFo8STJb6ObL9fnYkj2upPxd8Zm2UAX9J4iOQfCLDIyOWBzvbByDdAGsKTad8VKdhlWH/zFprrG0sFoOyAaksK13M4F9M+dUQxdTKNxWn/mWWGFW5s+kWFh3PpqGtRm8qT1U64dD3zjFsmR6wvwAk5/eycy84ww4kAP+4Jmv321Rre4zVnDiQ9M3HnQYp7P2R6YlN+k24Axgo9j9JWnwWeaNJErqC3AOSuP09uWSW62m33/twb/xBwjObri+VVSls98Nr6n1MZ',
  }
}
