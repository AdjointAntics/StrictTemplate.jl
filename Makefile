.PHONY: init test docs clean help

OLD_NAME := StrictTemplate
OLD_UUID := 251259e7-3ef8-4394-bd08-e94f4bb747d3

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

init: ## Initialize new package: make init NAME=YourPackage [UUID=optional-uuid]
	@test -n "$(NAME)" || (echo "Usage: make init NAME=YourPackage [UUID=optional-uuid]" && exit 1)
	$(eval NEW_UUID := $(or $(UUID),$(shell julia -e 'using UUIDs; print(uuid4())')))
	@echo "Renaming: $(OLD_NAME) -> $(NAME)"
	@echo "UUID: $(NEW_UUID)"
	@echo ""
	@git grep -l "$(OLD_NAME)" | xargs sed -i 's/$(OLD_NAME)/$(NAME)/g'
	@sed -i 's/$(OLD_UUID)/$(NEW_UUID)/g' Project.toml test/Project.toml docs/Project.toml
	@mv src/$(OLD_NAME).jl src/$(NAME).jl
	@git remote set-url origin https://github.com/AdjointAntics/$(NAME).jl.git
	@echo ""
	@echo "Done. Review with 'git diff' then commit when ready."

test: ## Run test suite
	julia --project=. -e 'using Pkg; Pkg.instantiate(); Pkg.test()'

docs: ## Build documentation locally
	julia --project=docs -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'
	julia --project=docs docs/make.jl

clean: ## Remove build artifacts
	rm -rf docs/build docs/src/generated Manifest.toml docs/Manifest.toml
