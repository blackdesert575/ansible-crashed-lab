# ansible-qemu-kvm
Play ansible-qemu-kvm!

## Prerequisites

* Ubuntu/Debian host
* Python == 3.10.12
* pip == 22.0.2
* [Python dev_setup notes if needed](https://github.com/hong539/setup_dev_environment/blob/main/programming_languages/python/python.md)

## tips/guides...etc

* Ansible
    * [Getting started with Ansible](https://docs.ansible.com/ansible/latest/getting_started/index.html)
    * [installation-guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installation-guide)
    * [pip for Debian/Ubuntu and derivatives](https://packaging.python.org/en/latest/guides/installing-using-linux-tools/#debian-ubuntu-and-derivatives)

## how-to-deploy

```shell
#For Debian/Ubuntu
sudo apt update
sudo apt install python3-venv python3-pip

#install ansilbe
python3 -m pip install --user ansible

#add to PATH
vim ~/.bashrc
export PATH=$PATH:/home/hong/.local/bin
source ~/.bashrc

#IF install with package mangager apt
#Command 'ansible' not found, but can be installed with:
sudo apt install ansible       # version 2.10.7+merged+base+2.10.8+dfsg-1, or
sudo apt install ansible-core  # version 2.12.0-1ubuntu0.1
```

## Important!!!

== We're Using GitHub Under Protest ==

This project is currently hosted on GitHub.  This is not ideal; GitHub is a
proprietary, trade-secret system that is not Free and Open Souce Software
(FOSS).  We are deeply concerned about using a proprietary system like GitHub
to develop our FOSS project.  We have an
[open {bug ticket, mailing list thread, etc.} ](INSERT_LINK) where the
project contributors are actively discussing how we can move away from GitHub
in the long term.  We urge you to read about the
[Give up GitHub](https://GiveUpGitHub.org) campaign from
[the Software Freedom Conservancy](https://sfconservancy.org) to understand
some of the reasons why GitHub is not a good place to host FOSS projects.

If you are a contributor who personally has already quit using GitHub, please
[check this resource](INSERT_LINK) for how to send us contributions without
using GitHub directly.

Any use of this project's code by GitHub Copilot, past or present, is done
without our permission.  We do not consent to GitHub's use of this project's
code in Copilot.

![Logo of the GiveUpGitHub campaign](https://sfconservancy.org/img/GiveUpGitHub.png)