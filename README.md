[![Build Status](https://travis-ci.org/offtechnologies/ansible-role-phpvirtualbox.svg?branch=master)](https://travis-ci.org/offtechnologies/ansible-role-phpvirtualbox) [![Galaxy](http://img.shields.io/badge/galaxy-offtechnologies-brightgreen.svg)](https://galaxy.ansible.com/offtechnologies/phpvirtualbox/)

# Ansible role phpVirtualbox
Installs latest headless [Virtualbox](https://www.virtualbox.org/) and [phpVirtualbox](http://sourceforge.net/projects/phpvirtualbox/) on Ubuntu 16.10
<br>
Check this [wiki](https://sourceforge.net/p/phpvirtualbox/wiki/Home/) for more info.


## Requirements
Ubuntu 16.10

## Role Variables

(see and/or edit `templates/config.php.j2`)

(edit `defaults/main.yml`)

* `virtualbox_user: username`
* `virtualbox_user_pw: mysecretpass`


Example Playbook
----------------

    - hosts: lab
      roles:
         - { role: offtechnologies.phpvirtualbox }

License
-------
BSD
