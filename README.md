# [aaronrobson.github.io](https://aaronrobson.github.io)

# Purpose
This is a GitHub page for a mini website.
It allows me to host my
[Curriculum Vitae](https://github.com/AaronRobson/AaronRobsonCV)
and to develop a blog.

## Hosting
The website is hosted at:
<https://aaronrobson.uk/>

# Developing

## Install Ruby and Jekyll
Follow the instructions
[here](https://jekyllrb.com/docs/installation/)
for your operating system.

## Run locally
With the requirements installed in the previous step,
please run the following command to run the website locally:
```sh
bundle exec jekyll serve
```
or:
```sh
make run
```

### View in your browser
View the website by visiting the link stated, typically it is:
<http://127.0.0.1:4000/>

## Testing
Tests are run in Travis CI using the techniques here:
https://www.jacobtomlinson.co.uk/jekyll/2015/02/18/test-you-jekyll-blog-with-travis-ci/

Run this (not supported on Windows):
```sh
make test
```
