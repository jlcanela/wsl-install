# .PHONY: ${TARGETS}

install:
	ansible-galaxy install --roles-path . -r requirements.yml
	ansible-playbook -i '127.0.0.1' laptop.yml 
	#--ask-vault-pass