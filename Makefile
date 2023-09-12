install-ansible-deps:
	ansible-galaxy install -r requirements.yml

setup-servers:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --vault-password-file .pass

encrypt-secrets:
	ansible-vault encrypt group_vars/webservers/vault.yml 
	
change-secrets:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file .pass

install-datadog:
	ansible-playbook -i inventory.ini datadog-playbook.yml --vault-password-file .pass