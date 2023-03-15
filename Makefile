.PHONY: help
help: ## Display help message
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: start-lab
start-lab: ## Start Container Lab 
	sudo clab deploy -t clab/l2ls-lab-topo.yaml --reconfigure

.PHONY: stop-lab
stop-lab: ## Start Container Lab 
	sudo clab destroy -t clab/l2ls-lab-topo.yaml --cleanup
