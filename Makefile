.PHONY: gstatus gcommit gadd gresetall gpush gpushm gresetcommit gnewbranch gcheckout gdeletebrach help

help:
	@echo "gstatus gcommit gadd gresetall gpush gpushm gresetcommit gnewbranch gcheckout gdeletebrach help"

gstatus:
	git status

gcommit:
	cz commit

gadd:
	git add $(filter-out gadd,$(MAKECMDGOALS))
	@echo "Adicionado(s): $(filter-out gadd,$(MAKECMDGOALS))"
	git status

%:
	@:

greset:
	git reset $(filter-out greset,$(MAKECMDGOALS))
	git status

gresetall:
	git reset .
	git status
gpush:
	git push origin $(filter-out gpush,$(MAKECMDGOALS))

gpushm:
	git push origin main

gresetcommit:
	git reset --soft HEAD~1
	git status

gnewbranch:
	git checkout -b $(filter-out gnewbranch,$(MAKECMDGOALS))
	git branch

gcheckout:
	git checkout $(filter-out gcheckout,$(MAKECMDGOALS))
	git status

gdeletebranch:
	git branch -d $(filter-out gdeletebranch,$(MAKECMDGOALS))
	git status
