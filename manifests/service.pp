# == Class redis::service
#
# This class is meant to be called from redis
# It ensure the service is running
#
class redis::service {

  service { $redis::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
