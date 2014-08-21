package { 'mysql-server':
        ensure => installed
}

package {'screen':
	ensure => installed
}

service {'mysql-server':
        ensure => running,
        require Package["apache2"],
}
