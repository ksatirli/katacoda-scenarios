#!/bin/sh

# make Datadog API credentials available
export TF_VAR_datadog_api_key="${DD_API_KEY}"
export TF_VAR_datadog_app_key="${DD_APP_KEY}"
