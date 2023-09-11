.DEFAULT_GOAL := build

fmt:
	go fmt ./...
.PHONY:fmt

lint: fmt
	golint ./...
.PHONY:lint

vet: fmt
	go vet ./...
.PHONY:vet

run: vet
	go run cmd/goDemoProject/main.go
.PHONY:run

build: vet
	mkdir -p bin
	go build -o bin/goDemoProject cmd/goDemoProject/main.go
.PHONY:build