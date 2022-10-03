repository := "robstar"

# plugin names must match folder names in plugins/ folder
gql_plugin_name := "graphql"
jsonschema_plugin_name := "jsonschema"
betterproto_plugin_name := "python-betterproto"

_create_bsr_plugin name:
    @echo "creating {{name}} plugin"
    buf beta registry plugin create buf.build/{{repository}}/plugins/{{name}} --visibility public

_build_docker name version:
    @echo "building {{name}} plugin {{version}}…'"
    docker build \
        -f plugins/{{name}}/Dockerfile \
        -t plugins.buf.build/{{repository}}/{{name}}:{{version}} \
        --build-arg PLUGIN_VERSION={{version}} \
        plugins/{{name}}/

_publish_plugin_to_bsr name version:
    @echo "publishing {{name}} plugin {{version}}…'"
    just _build_docker {{name}} {{version}}
    docker push plugins.buf.build/{{repository}}/{{name}}:{{version}}

create-jsonschema:
    just _create_bsr_plugin {{jsonschema_plugin_name}}

build-jsonschema version:
    just _build_docker {{jsonschema_plugin_name}} {{version}}

publish-jsonschema version:
    just _publish_plugin_to_bsr {{jsonschema_plugin_name}} {{version}}

create-betterproto:
    just _create_bsr_plugin {{betterproto_plugin_name}}

build-betterproto version:
    just _build_docker {{betterproto_plugin_name}} {{version}}

publish-betterproto version:
    just _publish_plugin_to_bsr {{betterproto_plugin_name}} {{version}}

create-graphql:
    just _create_bsr_plugin {{gql_plugin_name}}

build-graphql version:
    just _build_docker {{gql_plugin_name}} {{version}}

publish-graphql version:
    just _publish_plugin_to_bsr {{gql_plugin_name}} {{version}}
