class framework {
	
	# execute 'apt-get update'
	exec { 'apt-update':                    # exec resource named 'apt-update'
		command => '/usr/bin/apt-get update'  # command this resource will run
	}

	# install apache2 package
	package { 'apache2':
		require => Exec['apt-update'],        # require 'apt-update' before installing
		ensure => installed,
	}

	# ensure apache2 service is running
	service { 'apache2':
		ensure => running,
	}

	# install git package
	package { 'git':
		ensure => present,
	}
	
	#clone from github
	#exec { 'git-framework':
	#	command => "git clone git://github.com/blockstrap/framework.git /var/www/html",
	#	require => Package['git'],
	#}
	
	vcsrepo { "/var/www/html":
		ensure => latest,
		provider => git,
		require => [ Package[ 'git' ] ],
		source => "git://github.com/blockstrap/framework.git",
		revision => 'master',
	}

}