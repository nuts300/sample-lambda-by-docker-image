build:
	sam build
deploy:
	sam deploy -g
package-docker-image-function:
	docker run --rm -v "${PWD}/docker-image-function":/var/task lambci/lambda:build-nodejs12.x rm -rf node_modules & \
	docker run --rm -v "${PWD}/docker-image-function":/var/task lambci/lambda:build-nodejs12.x npm ci
package-normal-function:
	docker run --rm -v "${PWD}/normal-function":/var/task lambci/lambda:build-nodejs12.x rm -rf node_modules & \
	docker run --rm -v "${PWD}/normal-function":/var/task lambci/lambda:build-nodejs12.x npm ci