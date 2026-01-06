.PHONY:  gs gc gad gr gra gpso gpm grc gctb grea gre gb gdb gsw gbm help

help:
	@echo "gs - git status"
	@echo "gc - cz commit"
	@echo "gad - git add <file> and git status"
	@echo "gr - git reset <file> and git status"
	@echo "gra - git reset . and git status"
	@echo "gpso - git push origin <branch>"
	@echo "gpsom - git push origin main"
	@echo "grc - git reset --soft HEAD~1 and git status"
	@echo "gctb - git checkout -b <new_branch> and git branch"
	@echo "grea - git restore . and git status"
	@echo "gre - git restore <file>"
	@echo "gb - git branch"
	@echo "gdb - git branch -d <branch_name> and git branch"
	@echo "gsw - git switch <branch_name>"
	@echo "gbm - git branch -m <new_name>"

gs:
	git status

gc:
	cz commit

gad:
	git add $(filter-out gad,$(MAKECMDGOALS))
	@echo "Adicionado(s): $(filter-out gadd,$(MAKECMDGOALS))"
	git status

%:
	@:

gr:
	git reset $(filter-out gr,$(MAKECMDGOALS))
	git status

gra:
	git reset .
	git status

gpso:
	git push origin $(filter-out gpso,$(MAKECMDGOALS))

gpsom:
	git push origin main

grc:
	git reset --soft HEAD~1
	git status

gctb:
	git checkout -b $(filter-out gctb,$(MAKECMDGOALS))
	git branch

grea:
	git restore .
	git status

gre:
	git restore $(filter-out gre,$(MAKECMDGOALS))

gb:
	git branch

gdb:
	git branch -d $(filter-out gdb,$(MAKECMDGOALS))
	git branch

gsw:
	git switch $(filter-out gsw,$(MAKECMDGOALS))

gplom:
	git pull origin main

gbm:
	git branch -m $(filter-out gbm,$(MAKECMDGOALS))