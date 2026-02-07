.DEFAULT_GOAL := all

.PHONY: all
all: build test

.PHONY: clean
clean:
	rm -f Gemfile.lock

.PHONY: install-packages
install-packages:
	bundle install

.PHONY: build
build:
	bundle exec jekyll build --safe

.PHONY: test
test:
	bundle exec htmlproofer ./_site --only-4xx --disable-external=true --enforce-https=false

.PHONY: run
run:
	bundle exec jekyll serve --safe
