.PHONY:  gs gc gad gr gra gp gpm grc gcbb gct gdb help

help:
	@echo "gs - git status"
	@echo "gc - cz commit"
	@echo "gad - git add <file> and git status"
	@echo "gr - git reset <file> and git status"
	@echo "gra - git reset . and git status"
	@echo "gp - git push origin <branch>"
	@echo "gpm - git push origin main"
	@echo "grc - git reset --soft HEAD~1 and git status"
	@echo "gctb - git checkout -b <new_branch> and git branch"
	@echo "gct - git checkout . and git status"
	@echo "gdb - git branch -d <branch_name> and git branch"

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
gp:
	git push origin $(filter-out gp,$(MAKECMDGOALS))

gpm:
	git push origin main

grc:
	git reset --soft HEAD~1
	git status

gcbb:
	git checkout -b $(filter-out gcbb,$(MAKECMDGOALS))
	git branch

gct:
	git checkout $(filter-out gct,$(MAKECMDGOALS))

gdb:
	git branch -d $(filter-out gdb,$(MAKECMDGOALS))
	git branch
