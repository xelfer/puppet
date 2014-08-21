package { 'apache2':
        ensure => installed
}

package {'screen':
	ensure => installed
}

service {'apache2':
	ensure => running,
	require Package["apache2"],
}
