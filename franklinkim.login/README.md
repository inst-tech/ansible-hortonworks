# Ansible Login Role

[![Build Status](https://travis-ci.org/weareinteractive/ansible-login.png?branch=master)](https://travis-ci.org/weareinteractive/ansible-login)
[![Stories in Ready](https://badge.waffle.io/weareinteractive/ansible-login.svg?label=ready&title=Ready)](http://waffle.io/weareinteractive/ansible-login)

> `login` is an [ansible](http://www.ansible.com) role which: 
> 
> * installs login
> * configures login

## Installation

Using `ansible-galaxy`:

```
$ ansible-galaxy install franklinkim.login
```

Using `arm` ([Ansible Role Manager](https://github.com/mirskytech/ansible-role-manager/)):

```
$ arm install franklinkim.login
```

Using `git`:

```
$ git clone https://github.com/weareinteractive/ansible-login.git
```

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```
# UMASK is the default umask value for pam_umask and is used by
# useradd and newusers to set the mode of the new home directories.
# 022 is the "historical" value in Debian for UMASK
# 027, or even 077, could be considered better for privacy
# There is no One True Answer here : each sysadmin must make up his/her
# mind.
login_umask: 022
#
# Enable setting of the umask group bits to be the same as owner bits
# (examples: 022 -> 002, 077 -> 007) for non-root users, if the uid is
# the same as gid, and username is the same as the primary group name.
#
# If set to yes, userdel will remove the user´s group if it contains no
# more members, and useradd will create by default a group with the name
# of the user.
#
login_usergroups_enab: 'yes'
```

## Example playbook

```
- host: all
  roles: 
    - franklinkim.login
  vars:
    login_umask: 002
```

## Testing

```
$ git clone https://github.com/weareinteractive/ansible-login.git
$ cd ansible-login
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) We Are Interactive under the MIT license.
