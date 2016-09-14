class profile::base {
  user { 'root':
    ensure           => 'present',
    comment          => 'root',
    gid              => '0',
    home             => '/root',
    password         => '$1$n/kUYSYj$1ogOgMSfoDfM0uYhWACmv1',
    shell            => '/bin/bash',
    uid              => '0',
  }
  
  user { 'ddewey':
    ensure => 'present',
  }
  
  include ntp_wrapper
  include epel_wrapper
  
  package { 'vim':
    ensure => present,
  }
}
