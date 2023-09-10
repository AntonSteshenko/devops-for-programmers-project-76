install-ansible-deps:
	ansible-galaxy install -r requirements.yml

setup-servers:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml  --tags deploy --vault-password-file .pass