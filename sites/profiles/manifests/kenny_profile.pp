# Personal Manifests

#Per-user manifests live in `modules/people/manifests/$login.pp`, where
#`$login` is a GitHub login. A simple user manifest example:

#```puppet
class profiles::kenny_profile {

  notify {'class people::kenny declared': }

  #### Add packages ###
  ##package { "pstree":
  ##  ensure => present,
  ##}

  #package { "watch":
  #  ensure => present,
  #}

  ##  Additional modules
  package { 'ant': ensure => installed, } 
  #include augeas
  #include brewcask
  #include chrome
  package { 'boot2docker': ensure => installed, } 
  package { 'docker': ensure => installed, } 
  #include dockutil
  #dockutil::item { 'Add Terminal':
  #      item    => '/Applications/Utilities/Terminal.app',
  #      label   => "Terminal",
  #      action  => "add",
  #      position => 1,
  #}
  #dockutil::item { 'Add Firefox':
  #      item    => "/Applications/Firefox.app",
  #      label   => "Firefox",
  #      action  => "add",
  #      position => 2,
  #}
  #dockutil::item { 'Add Opera':
  #      item    => "/Applications/Opera.app",
  #      label   => "Opera",
  #      action  => "add",
  #      position => 3,
  #}
  #dockutil::item { 'Add Chrome':
  #      item    => '/Applications/Google Chrome.app',
  #      label   => "Chrome",
  #      action  => "add",
  #      position => 4,
  #}
  #dockutil::item { 'Add System Preferences':
  #      item    => '/Applications/System Preferences.app',
  #      label   => "System Preferences",
  ##      action  => "add",
  #      position => 5,
  #}
  #dockutil::item { 'Add Eclipse':
  #      item    => "/Applications/Eclipse.app",
  #      label   => "Eclipse",
  #      action  => "add",
  #      position => 6,
  #}
  #dockutil::item { 'Add Intellij':
  #      item    => '/Applications/Intellij IDEA.app',
  #      label   => "Intellij",
  #      action  => "add",
  #      position => 7,
  #}
  #dockutil::item { 'Add Sublime':
  #      item    => '/Applications/Sublime Text.app',
  #      label   => "Sublime_Text",
  #      action  => "add",
  #      position => 8,
  #}
  #dockutil::item { 'Add Virtualbox':
  #      item    => "/Applications/VirtualBox.app",
  #      label   => "VirtualBox",
  #      action  => "add",
  #      position => 9,
  #}
  ##dockutil::item { 'Add Contacts':
  ##      item    => "/Applications/VirtualBox.app",
  ##      label   => "VirtualBoxx",
  ##      action  => "add",
  ##      position => 10,
  ##}
  #dockutil::item { 'Add iTunes' :
  #      item    => "/Applications/iTunes.app",
  #      label   => "iTunes",
  #      action  => "add",
  #      position => 10,
  #}
  #dockutil::item { 'Add App Store' :
  #      item    => "/Applications/App Store.app",
  #      label   => "App Store",
  #      action  => "add",
  #      position => 11,
  #}
  #dockutil::item { 'Add Cisco AnyConnect Secure Mobility Client' :
  #      item    => '/Applications/Cisco/Cisco AnyConnect Secure Mobility Client.app',
  #      label   => "Cisco AnyConnect Secure Mobility Client",
  #      action  => "add",
  #      position => 12,
  #}
  package { 'dynamodb-local': ensure => installed, } 

  #package { 'eclipse-ide': provider => 'brewcask', }
  #package { 'eclipse-java': provider => 'brewcask' }
  #include firefox
  package { 'git-secrets': ensure => installed, } 
  package { 'htop': ensure    => installed, } 
  #include hub
  #homebrew::tap { 'caskroom/versions': }
  #package { 'intellij-idea-ce': provider => 'brewcask', }
  #class { 'intellij':
  #  edition => 'community';
  #}
  package { 'gradle': ensure      => installed, }
  package { 'groovy': ensure      => installed, }
  package { 'gnupg2': ensure       => installed, }
  #package { 'gpgtools': provider => 'brewcask' }
  #class { 'gpgtools' :
  #  version                       => '2015.09',
  #}

  #package { 'java': provider => 'brewcask' }
  package { 'jenv': ensure   => installed, } 
  package { 'maven': ensure  => installed, } 
  ##
  #   Note: boxen runs mysql on port 13306
  ##
  #include mysql
  #mysql::db { 'kennydb' : }
  #include opera
  #osx::recovery_message { 'Youll never take me alive, coppers!' : }
  #include osx::dock::autohide
  #include osx::finder::show_all_on_desktop
  #include osx::finder::unhide_library
  #include osx::disable_app_quarantine
  #include osx::no_network_dsstores
  #include osx::software_update
  #class { 'osx::global::natural_mouse_scrolling':
  #  enabled => false
  #}
  ## if $macpro != "book" size == 55, else size == 36
  #class { 'osx::dock::icon_size':
  #  size => 55
  #}
  #class { 'osx::sound::interface_sound_effects':
  #  enable => false
  #}
  #class { 'osx::mouse::smart_zoom':
  #  enabled => true
  #}
  #class { 'osx::mouse::swipe_between_pages':
  #  enabled => true
  #}
  #package { 'packer': ensure => installed, } 
  #include processing
  #include python
  #python::version { '2.7.10': }
  #python::version { '3.5.0': }
  #class { 'python::global':
  #  version => '2.7.10'
  #}
  #python::package { 'aws for 2.7.10' :
  #  package => 'aws',
  #  python  => '2.7.10',
  #  #}
  ##python::package { 'boto3 for 2.7.19' :
  ##  package => 'boto3',
  ##  python  => '2.7.10',
  ##  version => '1.4.0',
  ##}
  #package { 'pycharm-ce': provider                       => 'brewcask' }
  package { 'homebrew/boneyard/pyenv-pip-rehash': ensure => installed, }
  package { 'pyenv-virtualenv': ensure                   => installed, }
  #package { 'aptanastudio': provider                     => 'brewcask' }
  package { 's3cmd': ensure                              => installed, }
  #package { 'skype' : provider                           => 'brewcask' }
  #include sublime_text
  #sublime_text::package { 'Emmet':
  # source => 'sergeche/emmet-sublime',
  #}
  #sublime_text::package { 'SublimeLinter':
  # source => 'sergeche/emmet-sublime',
  #}
  #include virtualbox
  #include vlc
  #dockutil::item { 'Add VLC':
  #  	item     => "/Applications/VLC.app",
  #    label    => "VLC",
  #    action   => "add",
  #    position => "7",
  #}
  #include wget
  ##
  #class { 'vagrant': 
  #  version => '1.9.1',
  #}
  #package { 'vagrant': provider => 'brewcask' }
  #vagrant::plugin { 'vagrant-r10k' : }
  #vagrant::plugin { 'vagrant-scp' : }
  #vagrant::plugin { 'vagrant-puppet-install' : }
  #
  #include vagrant_manager

  #
  #include vim
  #vim::bundle { [
  #  'rodjek/vim-puppet',
  #  'Yggdroot/indentLine',
  #  #'garbas/vim-snipmate',
  #  'honza/vim-snippets',
  #  'godlygeek/tabular',
  #  'tpope/vim-fugitive',
  #  'tpope/vim-markdown',
  #  'scrooloose/syntastic',
  #  'sjl/gundo.vim',
  #]: }
  
  #file { "${vim::vimrc}":
  #  ensure => present,
  #  source => 'puppet:///modules/people/vimrc',
  #  owner =>  $boxen_user,
  #  group =>  'staff',
  #  mode => '0644',
  #}
  #
  #repository { "/Users/${boxen_user}/.vim/colors":
  #  source => 'flannon/vim-colorschemes',
  #}
  # 
  #$home     = "/Users/${::boxen_user}"
  ##$dotfiles = "${boxen::config::srcdir}/dotfiles"
  #$bin      = "${home}/bin"
  #$localbin = "/usr/local/bin"
  # 
  #file { "${bin}":
  #  ensure => link,
  #  mode   => '0755',
  #  target => '/usr/local/bin',
  #}

  #file { "${home}/boxen":
  #  ensure  => link,
  #  mode    => '0755',
  #  target => "${boxen::config::home}",
  #}
  #
  ##file { "${home}/.profile":
  ##  ensure => present,
  ##  source => 'puppet:///modules/people/profile',
  ##  owner =>  $boxen_user,
  ##  group =>  'staff',
  ##  mode => '0644',
  ##}
  ##
  ##file { "${home}/.bashrc":
  ##  ensure => present,
  ##  source => 'puppet:///modules/people/bashrc',
  ##  owner =>  $boxen_user,
  ##  group =>  'staff',
  ##  mode => '0644',
  ##}


  #####################################
  ### Facter, Puppet, and Envpuppet ##
  #####################################

  #repository { "${::boxen_srcdir}/puppet":
  #  source => 'puppetlabs/puppet',
  #}

  #repository { "${::boxen_srcdir}/facter":
  #  source => 'puppetlabs/facter',
  ##}

  #file { '/bin/envpuppet':
  #  ensure => link,
  #  mode => '0755',
  #  target => "${::boxen_srcdir}/puppet/ext/envpuppet",
  #  require => Repository["${::boxen_srcdir}/puppet"],
  #}
}
