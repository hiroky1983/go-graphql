.PHONY: test

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

gen:
	docker-compose exec go-graphql go run github.com/99designs/gqlgen generate

tidy:
	docker-compose exec go-graphql go mod tidy

migrate:
	docker-compose exec go-graphql sh -c ' go run db/migrate/main.go'

ls:
	docker-compose exec go-graphql ls
