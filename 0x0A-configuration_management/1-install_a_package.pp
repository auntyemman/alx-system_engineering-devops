# Using Puppet to install flask from pip3

package { 'requests':

  ensure          => '2.1.0',

  provider        => 'pipx',

  install_options => [

    { '--index-url' => 'https://pypi.mycorp.com' },

  ],

}
