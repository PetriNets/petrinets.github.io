# `petrinet.info`

## Running using docker

After starting `jekyll serve` in a docker container, surf to [`localhost:4048`](http://localhost:4048)

	sh docker-run-jekyll.sh

## Building

This needs ruby > 2.X.X and bundler

	gem install bundler

to start dev server

	bundle config build.nokogiri --use-system-libraries
	bundle install --path vendor/bundle
	bundle exec jekyll serve
