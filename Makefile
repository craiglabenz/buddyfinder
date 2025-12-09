test:
	cd api && dart test
	cd api/packages/api_data && dart test

.PHONY: api
api:
	cd api && dart_frog dev --port 8888

server: api

.PHONY: site
site:
	cd site && jaspr serve
