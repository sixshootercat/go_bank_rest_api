build:
	@go build -o bin/gobankapi

run: build
	@air -c .air.toml

test:
	@go test -v ./...