.PHONY: test

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

gen:
	docker-compose exec go-graphql go run github.com/99designs/gqlgen generate
	