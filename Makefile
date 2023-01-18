MAKEFLAGS += --silent
path := .

.PHONY: help
help: ## Now, you are looking at it.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

.PHONY: run
run: ## Run the application.
	docker-compose up -d

.PHONY: local
local:
	python main.py