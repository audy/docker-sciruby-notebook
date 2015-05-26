# Docker SciRuby/IRuby Notebook

Get a working IRuby notebook inside of a Docker container.

Comes with:

- NMatrix

## Quickstart

```sh
# assuming you have Docker working

git clone https://github.com/audy/docker-sciruby-notebook
cd docker-sciruby-notebook
docker build . # note image_id
docker run --publish 8888:8888 --volumes ./notebooks:/notebooks $image_id
```

## LICENSE

MIT. See license.md for details.
