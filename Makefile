build:
	CGO_ENABLED=0 GOOS=linux go build -o website-controller -a pkg/website-controller.go

image: build
	docker build -t vidushi0808/website-controller .

push: image
	docker push vidushi0808/website-controller:latest
