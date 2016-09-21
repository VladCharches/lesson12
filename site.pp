File { backup => false }

node client.minsk.epam.com {
   include '::ntp'
}
  
  class { '::mysql::server':
    root_password    => 'password',
    override_options => {
      'mysqld' => { 'max_connections' => '1024' }
    },
  }
  mysql_database { 'test_db':
      ensure  => present,
      charset => 'utf8',
  }
  mysql_user { 'test_user@localhost':
    ensure => present,
  }
  mysql_grant { 'test_user@localhost/test_db.*':
    ensure      => present,
    options     => ['GRANT'],
    privileges  => ['ALL'],
    table       => 'test_db.*',
    user        => 'test_user@localhost',
  } 

