# ansible-qemu-kvm
Play ansible-qemu-kvm!

## to do list

* setup lab with 1 Control node(Ubuntu/Debian), 1 Managed node(CentOS)
* For nginx deploy examples

## Prerequisites

* Ubuntu/Debian host
* Python == 3.10.12
* pip == 22.0.2
* [Python dev_setup notes if needed](https://github.com/hong539/setup_dev_environment/blob/main/programming_languages/python/python.md)

## tips/guides...etc

* Ansible
    * [docs/ansible-core support matrix](https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html#ansible-core-support-matrix)
    * [Getting started with Execution Environments](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html#getting-started-ee-index)
    * [github/ansible community EE image](https://github.com/ansible-community/images/tree/main)
    * [Getting started with Ansible](https://docs.ansible.com/ansible/latest/getting_started/index.html)
    * [installation-guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installation-guide)
    * [Installing pip/setuptools/wheel with Linux Package Managers](https://packaging.python.org/en/latest/guides/installing-using-linux-tools/#debian-ubuntu-and-derivatives)
    * [Building an inventory](https://docs.ansible.com/ansible/latest/getting_started/get_started_inventory.html)
    * [community.general.proxmox module – Management of instances in Proxmox VE cluster](https://docs.ansible.com/ansible/latest/collections/community/general/proxmox_module.html#ansible-collections-community-general-proxmox-module-requirements)

* [Azure Bastion](https://learn.microsoft.com/zh-tw/azure/bastion/bastion-overview)
* [JumpServer](https://github.com/jumpserver/jumpserver)

## setup

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

#check ansibe
ansible --version
ansible all --list-hosts

#test ansible-inventory
ansible-inventory -i inventory.yaml --list
ansible virtualmachines -m ping -i inventory.yaml
```

## For nginx deploy examples

* dir strucure

```
ansible_project/
├── inventory/                 # Inventory 目錄
│   └── inventory.yml          # Inventory 文件 (YAML 格式)
├── deploy_nginx.yml           # 主 Playbook 文件
├── group_vars/                # 組變量目錄
│   └── all.yml                # 全局變量文件
├── roles/                     # 角色目錄
│   ├── nginx/                 # nginx 角色
│   │   ├── tasks/             # 任務目錄
│   │   │   ├── main.yml       # 主任務文件
│   │   ├── files/             # 靜態文件目錄
│   │   │   ├── game-h5.tar.gz # 靜態網站檔案
│   │   │   ├── app-h5.tar.gz
│   │   │   ├── agent-h5.tar.gz
│   │   ├── templates/         # 模板文件目錄
│   │   │   ├── nginx_virtual_host.j2 # Nginx 虛擬主機模板
│   │   ├── vars/              # 變量目錄
│   │   │   ├── main.yml       # nginx 角色相關變量
├── logs/                      # 執行日誌目錄
│   └── ansible.log            # 日誌文件
├── README.md                  # 專案說明文件
```

* run with cli

```
ansible-playbook -i inventory/inventory.yml deploy_nginx.yml
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