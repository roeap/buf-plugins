# ts-proto

A [buf plugin](https://docs.buf.build/bsr/remote-generation/plugin-example) for generating
code with the [ts-proto](https://github.com/danielgtaylor/python-betterproto) package.

## Build and publish

To build the docker file, execute

```sh
docker build -t plugins.buf.build/mlfusion/ts-proto:<version>-<plugin-version> .
```

Then publish to the buf docker registry.

```sh
docker push plugins.buf.build/mlfusion/ts-proto:<version>-<plugin-version>
```
