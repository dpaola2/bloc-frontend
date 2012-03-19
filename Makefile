all: install

install:
	bundle install

serve:
	foreman start -p 5000

run: install serve

migrate: install
	sequel -m migrations ${DATABASE_URL}

shell:
	bundle exec irb