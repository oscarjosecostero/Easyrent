BRANCH = $(shell git rev-parse --abbrev-ref HEAD)
V = \033[92m
N = \033[0m
R = \033[0;31m

ifeq (${BRANCH},master)
	ENV_NAME = production
else 
ifeq (${BRANCH},staging)
	ENV_NAME = staging
endif
endif

help:
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo "   ${V}deploy${N}  Deploy on dokku"
	@echo "   ${V}tests${N}   Run specs"
	@echo ""

deploy:
ifdef ENV_NAME
	@echo "${V}▷ You are about to deploy to ${ENV_NAME} ${N}"
	@sh confirm.sh && make execute_deploy arg=${arg}
else
	@echo "${R}▷ You can only deploy to staging or master branches ${N}"
endif

execute_deploy: 
	@echo "${V}▷ You are on the branch ${BRANCH}${N}"
	git push ${ENV_NAME} ${arg} ${BRANCH}:master

tests:
	rspec spec/