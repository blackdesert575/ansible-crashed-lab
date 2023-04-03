# ansible-qemu-kvm
Play ansible-qemu-kvm!

## how-to-deploy

```shell
#Setting UP Python version to 3.9
cd /your/projects/
pyenv install 3.9
pyenv local 3.9.16

#Test in Python venv
pip install pipenv
pip install ansible
pip install ansible-lint

#check
ansible-lint playbook.yml
ansible-playbook -i inventory playbook.yml --syntax-check
ansible-inventory -i inventory --list
```