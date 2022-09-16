# Using Puppet to install flask from pip3

include sys::git

venv_package { 'Flask@/srv/venv':

  ensure  => '0.8.1',

  source  => 'git+https://github.com/mitsuhiko/flask',

  require => Class['sys::git'],

}
