# DockerJekyll

Building the smallest possible Docker image (based on `nginx:stable-alpine`) to deploy a static Jekyll website


## Getting started

```bash
jekyll build
docker build -t my-site .
docker run -it -p 8080:80 my-site
```

Open http://localhost:8080 in your browser.


## About size

The resulting image contains only `nginx` and the HTML code. No Ruby, no build stuff - ready to ship to your Docker host.

Look at the image size:

```bash
$ docker images | grep my-site
my-site   latest   9d3ab37ef5d8   3 seconds ago   22.7MB
```
