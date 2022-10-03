# buf-plugins

This repository contains some useful (at least for me :)) modules and plugins for use with
the [buf schema registry](https://buf.build).

An example setup can be found in the `example` folder.

## python-beterproto

Based on the [python-betterproto](https://github.com/danielgtaylor/python-betterproto) plugin.

## jsonschema

Based on the [protoc-gen-jsonschema](https://github.com/chrusty/protoc-gen-jsonschema) plugin.

## graphql

Based on the [protoc-gen-graphql](https://github.com/martinxsliu/protoc-gen-graphql) plugin.

## Example `buf.gen.yaml`

```yaml
version: v1
plugins:
  - remote: buf.build/robstar/plugins/python-betterproto:v2.0.0-1
    out: gen/python
  - remote: buf.build/robstar/plugins/jsonschema:v1.3.9
    out: gen/jsonschema
  - remote: buf.build/robstar/plugins/protoc-gen-graphql:v0.1
    out: gen/graphql
```
