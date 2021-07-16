add-requirements:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml
start-playbook:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file ~/.ansible_pass.txt
encrypt-string:
	ansible-vault encrypt_string --vault-password-file ~/.ansible_pass.txt $(secret_value) --name $(secret_name)