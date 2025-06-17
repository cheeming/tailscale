# e.g. HOST=prox3, make setup

setup:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True venv/bin/ansible-playbook -v -b -i "${HOST}," -e @secrets.enc --ask-vault-pass -e machine_name="${HOST}" prox.yml

check:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True venv/bin/ansible-playbook -v -b -C -i "${HOST}," -e @secrets.enc --ask-vault-pass -e machine_name="${HOST}" prox.yml
