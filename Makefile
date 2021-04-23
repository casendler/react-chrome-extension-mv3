####################################
# Build command for Chrome Extension
####################################

.PHONY: help build

help:
	$(info ${HELP_MESSAGE})
	@exit 0

build:
	@echo 'Removing prior build...' 
	@rm -rf dist/*
	@rm -f latestBuild.zip
	@echo 'Prior build removed!' 
	@echo 'Preparing new extension build..' 
	@export INLINE_RUNTIME_CHUNK=false; \
	export GENERATE_SOURCEMAP=false; \
	yarn build
	@mkdir -p dist
	@cp -r build/* dist
	@echo 'Renaming files...' 
	@mv dist/index.html dist/popup.html
	@echo 'Zipping up build files for upload...'
	@zip -r -X latestBuild.zip dist/*
	@echo 'New extension build ready for upload!' 
	@exit 0

define HELP_MESSAGE

	--- Run this command to prepare the build for upload ---
	$ make build

endef


