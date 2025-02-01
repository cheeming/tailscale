# e.g. HOST=prox3, make setup

setup:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True ansible-playbook -b -i "${HOST}," -e @secrets.enc --ask-vault-pass -e machine_name="${HOST}" prox.yml

update:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True ansible-playbook -b -i "${HOST}" -e machine_name="${HOST}" prox-update.yml
