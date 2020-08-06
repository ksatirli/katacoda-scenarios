#!/bin/sh

# make Datadog API credentials available
export TF_VAR_datadog_api_key="TODO${DD_API_KEY}"
export TF_VAR_datadog_app_key="TODO${DD_APP_KEY}"
