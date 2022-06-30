APIURL=https://api.skopecky-0.dev.datahub.redhat.com:6443

function get_from_api {
    echo curl \
        $APIURL/api/v1/namespaces/service-catalog/secrets/service-catalog \
        -H "Authorization: Bearer $SERVICE_ACCOUNT_TOKEN" \
        | jq '.data.BACKEND_SECRET' | sed s/\"//g
}