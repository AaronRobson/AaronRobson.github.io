.DEFAULT_GOAL := all

.PHONY: all
all: build test

.PHONY: clean
clean:
	rm -f Gemfile.lock

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: test
test:
	bundle exec htmlproofer ./_site --only-4xx --check-favicon --check-html

.PHONY: run
run:
	bundle exec jekyll serve
