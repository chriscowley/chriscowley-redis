####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with redis](#setup)
    * [What redis affects](#what-redis-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with redis](#beginning-with-redis)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Install Redis and that is all

##Module Description

Just installs Redis on Centos/RHEL/Ubuntu/Debian. Doesn't do anything else, as I do not need to.

##Setup

###What redis affects

The package Redis willl be installed

###Beginning with redis

Install with R10k by adding

```
mod 'redis',
  :git => 'https://github.com/chriscowley/chriscowley-redis.git'
```

To `Puppetfile`

##Usage


```
class {'redis': }
```


##Reference

Currently just use the basic `redis` class

##Limitations

Tested on Centos 6 and 7. Should work fine on Ubuntu/Debian.

##Development

Feel free to fork and send PRs. Include tests please.

##Release Notes/Contributors/Etc **Optional**

Not a lot really.
