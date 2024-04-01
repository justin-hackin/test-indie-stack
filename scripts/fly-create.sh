fly apps create test-indie-stack-2b2d
fly apps create test-indie-stack-2b2d-staging

fly volumes create data --size 1 --app test-indie-stack-2b2d
fly volumes create data --size 1 --app test-indie-stack-2b2d-staging

fly secrets set SESSION_SECRET=$(openssl rand -hex 32) --app test-indie-stack-2b2d
fly secrets set SESSION_SECRET=$(openssl rand -hex 32) --app test-indie-stack-2b2d-staging

