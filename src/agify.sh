#!/bin/bash

api_url="https://api.agify.io/"

function get_age() {
    # 1 - name: (string): <name>
    # 2 - country_id: (string): <2-letter ISO 3166-1 country code>
    curl --request GET \
        --url "${api_url}?name=${1}&country_id=${2:-}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
