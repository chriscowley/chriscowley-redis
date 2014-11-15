# == Class redis::params
#
# This class is meant to be called from redis
# It sets variables according to platform
#
class redis::params {
  case $::osfamily {
    #    'Debian': {
    #  $package_name = 'redis'
    #  $service_name = 'redis'
    #}
    'RedHat', 'Amazon': {
      $package_name = 'redis'
      $service_name = 'redis-server'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
