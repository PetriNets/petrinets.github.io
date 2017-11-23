needs ruby > 2.X.X and bundler

	gem install bundler

to start dev server

	bundle config build.nokogiri --use-system-libraries
	bundle install --path vendor/bundle
	bundle exec jekyll serve
