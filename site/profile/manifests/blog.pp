class profile::blog {
  class { 'apache': 
    default_vhost => false,
  }

  class { '::mysql::server':
    root_password           => 'strongpassword',
    remove_default_accounts => true,
    override_options        => $override_options
  }

  include wordpress
}
