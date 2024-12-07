# e.g. HOST=prox3, make setup

setup:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True ansible-playbook -b -i ${HOST} -e @secrets.enc --ask-vault-pass prox.yml

update:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True ansible-playbook -b -i ${HOST} prox-update.yml
