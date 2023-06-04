# HOST=prox3, make setup

setup:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True ansible-playbook -b -i ${HOST} prox.yml

update:
	ANSIBLE_HOST_KEY_CHECKING=False ANSIBLE_PIPELINING=True ansible-playbook -b -i ${HOST} prox-update.yml
