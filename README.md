# sample-lambda-by-docker-image

## Requirements
- sam cli > 1.15.0
- aws cli
- ECR repository (for docker-image-function)

## deployment

### build package for docker-image-function
```
make package-docker-image-function
```
### build package for normal-function
```
make package-normal-function
```
### build settings
```
make build
```

### deploy functions
```
make deploy
```
