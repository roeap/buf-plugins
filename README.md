# buf-plugin

Buf plugins for remote generation of of protobuf code with the buf schema registry.

## ts-proto

```yaml
version: v1
plugins:
  - remote: buf.build/mlfusion/plugins/ts-proto:v1.110.4-1
    out: gen/ts
```

based on the [ts-proto](https://github.com/stephenh/ts-proto) plugin.
See the [repo](https://github.com/stephenh/ts-proto#supported-options) for available options.

## python beterproto

```yaml
version: v1
plugins:
  - remote: buf.build/mlfusion/plugins/python-betterproto:v2.0.0-2
    out: gen/betterproto
```

based on the [ts-proto](https://github.com/danielgtaylor/python-betterproto) plugin.
