add-requirements:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml -p ./collections
start-playbook:
	ansible-playbook -i inventory.ini playbook.yml