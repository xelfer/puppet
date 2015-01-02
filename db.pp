package { 'mysql-server':
        ensure => installed
}

package {'screen':
	ensure => installed
}

service {'mysql-server':
        ensure => running,
	enable => true,
        require Package['mysql-server'],
}
