#!/usr/bin/make -f

test:
	go fmt ./...
	go mod tidy
	go test -cover -timeout=1s -race -count=1 ./...
