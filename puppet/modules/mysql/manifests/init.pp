class mysql {

	## Install percona-release package with provides the yum repository
	package { 'percona-release':
		source => "http://www.percona.com/downloads/percona-release/percona-release-0.0-1.x86_64.rpm"
	}

	## Define packages to install
	$mysql_packages = [ 'Percona-Server-server-55', 'Percona-Server-client-55', 'Percona-Server-shared-55' ]

	## ...and install them
	package { $mysql_packages:
		ensure => latest,
		require => Package['percona-release']
	}

}