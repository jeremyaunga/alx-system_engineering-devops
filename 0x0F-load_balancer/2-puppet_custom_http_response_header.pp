# Puppet manifest to configure a custom HTTP header response in Nginx

# Update ubuntu server
exec { 'update server':
  command  => 'apt-get update',
  user     => 'root',
  provider => 'shell',
}

# Install nginx web server on server
package { 'nginx':
  ensure   => present,
  provider => 'apt'
}

# Ensure the file exists before modifying it
file { '/etc/nginx/sites-available/default':
  ensure => file,
}

# Custom Nginx response header (X-Served-By: hostname)
file_line { 'add HTTP header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => 'add_header X-Served-By $hostname;',
}

# Start nginx service
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx']
}

