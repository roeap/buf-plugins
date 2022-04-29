# buf-plugins

Plugins for remote generation of protobuf code with the [buf schema registry](https://buf.build/).
An example setup can be found in the `example` folder.

## ts-proto

Based on the [ts-proto](https://github.com/stephenh/ts-proto) plugin.
See the [repo](https://github.com/stephenh/ts-proto#supported-options) for available options.

## python-beterproto

Based on the [python-betterproto](https://github.com/danielgtaylor/python-betterproto) plugin.

## Example `buf.gen.yaml`

```yaml
version: v1
plugins:
  - remote: buf.build/mlfusion/plugins/ts-proto:v1.110.4-1
    out: gen/ts
  - remote: buf.build/mlfusion/plugins/python-betterproto:v2.0.0-2
    out: gen/python

```