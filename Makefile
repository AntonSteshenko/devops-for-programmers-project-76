install-ansible-deps:
	ansible-galaxy install -r requirements.yml

setup-servers:
	ansible-playbook -i inventory.ini playbook.yml