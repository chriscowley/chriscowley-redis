# == Class: redis
#
# Full description of class redis here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class redis (
  $package_name = $redis::params::package_name,
  $service_name = $redis::params::service_name,
) inherits redis::params {

  # validate parameters here

  class { 'redis::install': } ->
  class { 'redis::config': } ~>
  class { 'redis::service': } ->
  Class['redis']
}
