# Summary

This project is used to build a VM for building a PHP development environment quickly. Reduce the time of study how to set up environment.

# Prerequisite

- install `homebrew`
- install `vagrantup` by `homebrew`
- install `virualbox`

Install CentOS 7.2 box

```sh
> vagrant box add "CentOS-7.2-x64" https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.2/vagrant-centos-7.2.box
```

# How to build box for PHP development

## Build `php-dev-vm-5.6.30.box`

```sh
> # start vm
> vagrant up

> # config mysql root password
> mysql_secure_installation
> # todo: add more config statements

> # create vagrant box
> vagrant package --output "php-dev-vm-5.6.30.box" {vm_id} && mv php-dev-vm-5.6.30.box ../../box/
```

# Build `php-dev-vm-7.1.5.box`

//todo

# How to use VM

## Use `php-dev-vm-5.6.30.box`

```sh
> # build php-dev-vm-5.6.30.box or download box from ftp://10.75.87.202/php-dev-vm-5.6.30.box (get the url from Ethan if not available)
> wget ftp://10.75.87.202/php-dev-vm-5.6.30.box && mv php-dev-vm-5.6.30.box ./box/php-dev-vm-5.6.30.box

> cd work/php56
> vagrant box remove "../../box/php-dev-vm-5.6.30.box" || true && vagrant up  # ignore error when box not exists

> # the password of mysql `root` user is `eVkU,iO);5R>`
```

## Use `php-dev-vm-7.1.5.box`

//todo

# References

- Discover Vagrant Boxes
  - https://atlas.hashicorp.com/boxes/search
  - http://www.vagrantbox.es/
- Vagrant: https://www.vagrantup.com/docs/index.html
- PHP Function Reference／扩展列表：http://php.net/manual/en/funcref.php
- Nginx配置
  - https://nealpoole.com/blog/2011/04/setting-up-php-fastcgi-and-nginx-dont-trust-the-tutorials-check-your-configuration/
  - https://segmentfault.com/a/1190000003067656
- PHP-FPM配置
  - FastCGI 进程管理器（FPM）配置：http://php.net/manual/zh/install.fpm.configuration.php
  - https://www.nginx.com/resources/wiki/start/topics/examples/phpfcgi/
