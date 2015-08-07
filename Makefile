go ?= go

.PHONY: build deploy init fmt lint test vet

build: fmt lint vet
	go get golang.org/x/mobile/cmd/gomobile
	gomobile build -target=ios ./hello/

clean:
	rm -r hello.app

deploy: build
	ios-deploy --debug --bundle hello.app

init:
	brew update && brew upgrade go --devel
	go get golang.org/x/mobile/cmd/gomobile
	gomobile init
	brew install node
	npm install -g ios-deploy

fmt:
	$(go) fmt ./...

lint:
	$(go) get github.com/golang/lint/golint
	golint ./...

test: fmt lint vet
	$(go) test ./...

vet:
	$(go) get golang.org/x/tools/cmd/vet
	$(go) vet ./...
