# Using Puppet to install flask from pip3

include sys::git

venv_package { 'Flask@/srv/venv':

  ensure  => '2.1.0',

  source  => 'git+https://github.com/mitsuhiko/flask',

  require => Class['sys::git'],

}
