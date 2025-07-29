.PHONY: _help

_help:
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

format: ## prettier
	npx prettier --write .

serve: ## serve
	python3 -m http.server
