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
  
  class { '::ntp':
    servers => ['0.pool.ntp.org','1.pool.ntp.org','2.pool.ntp.org']
  }
  
  include epel
  
  package { 'vim':
    ensure => present,
  }
}
