# UNIX Resolver
#
# == Parameters
#
# [*domain_name*]
#  The default domain.
#
# [*search_path*]
#   Array of domains to search.
#
# [*name_servers*]
#   Array of nameservers to search.
#
# == Examples
#
# class { 'resolv':
#   domain_name   => 'mydomain',
#   search_path   => [ 'mydomain', 'test.mydomain' ],
#   name_servers  => [ '10.0.0.1', '10.0.0.2' ],
# }
#
class resolv( $domain_name = undef,
  $search_path = undef,
  $name_servers = undef ) {

  file { '/etc/resolv.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('resolv/resolv.conf.erb'),
  }
}

# vim: set ts=2 sw=2 sts=2 tw=0 et:
