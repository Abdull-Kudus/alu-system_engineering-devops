# This Puppet manifest fixes Nginx to handle high traffic by increasing worker connections
exec { 'fix--for-nginx':
  command => 'sed -i "s/worker_connections 768;/worker_connections 4096;/" /etc/nginx/nginx.conf && service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
