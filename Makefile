add-requirements:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml
start-playbook:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file ~/.ansible_pass.txt
encrypt-string:
	ansible-vault encrypt_string --vault-password-file ~/.ansible_pass.txt $(secret_value) --name $(secret_name)

show-encrypted-string:
	ansible localhost -m debug -a var=$(secret_name) -e@$(path_to_file) --vault-password-file ~/.ansible_pass.txt
