# This Puppet manifest increases the ULIMIT for Nginx to handle high traffic

exec { 'increase_ulimit_for_nginx':
  command => '/bin/sed -i "s/ULIMIT=\\"-n 15\\"/ULIMIT=\\"-n 4096\\"/" /etc/default/nginx',
  onlyif  => '/bin/grep -q "ULIMIT=\\"-n 15\\"" /etc/default/nginx',
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
}

