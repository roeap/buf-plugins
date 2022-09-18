repository := "robstar"

create-jsonschema:
    @echo "creating jsonschema plugin"
    buf beta registry plugin create buf.build/{{repository}}/plugins/jsonschema --visibility public

build-jsonschema version:
    @echo "building jsonschema plugin {{version}}…'"
    docker build \
        -f jsonschema/Dockerfile \
        -t plugins.buf.build/{{repository}}/jsonschema:{{version}} \
        --build-arg PLUGIN_VERSION={{version}} \
        jsonschema/

publish-jsonschema version:
    @echo "publishing jsonschema plugin {{version}}…'"
    just build-jsonschema {{version}}
    docker push plugins.buf.build/{{repository}}/jsonschema:{{version}}

create-betterproto:
    @echo "creating betterproto plugin"
    buf beta registry plugin create buf.build/{{repository}}/plugins/python-betterproto --visibility public

build-betterproto version:
    @echo "building betterproto plugin {{version}}…'"
    docker build \
        -f python-betterproto/Dockerfile \
        -t plugins.buf.build/{{repository}}/python-betterproto:{{version}} \
        python-betterproto/

publish-betterproto version:
    @echo "publishing betterproto plugin {{version}}…'"
    just build-betterproto {{version}}
    docker push plugins.buf.build/{{repository}}/python-betterproto:{{version}}

create-ts-proto:
    @echo "creating ts-proto plugin"
    buf beta registry plugin create buf.build/{{repository}}/plugins/ts-proto --visibility public

build-ts-proto version:
    @echo "building ts-proto plugin {{version}}…'"
    docker build \
        -f ts-proto/Dockerfile \
        -t plugins.buf.build/{{repository}}/ts-proto:{{version}} \
        ts-proto/

publish-ts-proto version:
    @echo "publishing ts-proto plugin {{version}}…'"
    just build-ts-proto {{version}}
    docker push plugins.buf.build/{{repository}}/ts-proto:{{version}}
