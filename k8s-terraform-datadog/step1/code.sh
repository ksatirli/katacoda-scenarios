#!/bin/sh

# make Datadog API credentials available
export TF_VAR_datadog_api_key="db54e5221788b3492f9085a40a95766f${DD_API_KEY}"
export TF_VAR_datadog_app_key="f0b7d947887cf1641a27ab9cc3ea0b2e2aeb5a7b${DD_APP_KEY}"
