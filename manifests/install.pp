# == Class redis::install
#
class redis::install {

  package { $redis::package_name:
    ensure => present,
  }
}
