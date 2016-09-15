class profile::blog {
  class { 'apache': }
  
  apache::fastcgi::server { 'php':
    host       => '127.0.0.1:9000',
    timeout    => 15,
    flush      => false,
    faux_path  => '/var/www/php.fcgi',
    fcgi_alias => '/php.fcgi',
    file_type  => 'application/x-httpd-php'
  }

  class { '::mysql::server':
    root_password           => 'strongpassword',
    remove_default_accounts => true,
    override_options        => $override_options
  }

  include wordpress
}
