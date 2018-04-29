# DockerJekyll

[![](https://images.microbadger.com/badges/image/ledermann/docker-jekyll.svg)](https://microbadger.com/images/ledermann/docker-jekyll "Get your own image badge on microbadger.com")

Building the smallest possible Docker image to deploy a static Jekyll website


## Getting started

```bash
docker build -t my-site .
docker run -it -p 8080:80 my-site
```

Open http://localhost:8080 in your browser.


## About size

Because of multi-stage building, the resulting image contains only Nginx and the HTML code. No Ruby, no build stuff - ready to ship to your Docker host.

Look at the image size:

```bash
$ docker images | grep my-site
my-site   latest   a30f249e14de   3 seconds ago   15.5MB
```

## Requirements

* Docker 17.05 or later
