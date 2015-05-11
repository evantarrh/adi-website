#!/bin/sh

consul_set() {
	curl -X PUT -d "$2" "http://localhost:8500/v1/kv/adi-website/$1"
}

# Flask configurations
consul_set FLASK_HOST '0.0.0.0'
consul_set FLASK_PORT '5000'
consul_set FLASK_DEBUG 'TRUE'
consul_set SECRET_KEY ''

# Cross-site request forgery settings
consul_set CSRF_ENABLED 'TRUE'
consul_set CSRF_SESSION_KEY ''

# Google+, Google Auth, and Google Calendar configurations
consul_set GOOGLE_AUTH_ENABLED 'FALSE'
consul_set INSTALLED_APP_CLIENT_SECRET_PATH 'config/installed_app_client_secrets.json'
consul_set INSTALLED_APP_CREDENTIALS_PATH 'config/installed_app_credentials.json'
consul_set CLIENT_SECRETS_PATH 'config/client_secrets.json'
consul_set PRIVATE_CALENDAR_ID ''
consul_set PUBLIC_CALENDAR_ID ''

# MongoDB configurations
consul_set MONGO_DATABASE 'eventum'

# Logging configurations
consul_set LOG_FILE_MAX_SIZE '256'
consul_set APP_LOG_NAME 'log/app.log'
consul_set WERKZEUG_LOG_NAME 'log/werkzeug.log'
