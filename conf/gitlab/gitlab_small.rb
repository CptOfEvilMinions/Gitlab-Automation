#### General ####
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab-root-password')
gitlab_rails['time_zone'] = 'UTC'
gitlab_rails['gitlab_default_theme'] = 2
gitlab_shell['log_level'] = 'error'
gitlab_shell['log_format'] = 'json'

#### Postgres ####
# Disable Gitlab Postgresql
postgresql['enable'] = false
gitlab_rails['db_adapter'] = "postgresql"
gitlab_rails['auto_migrate'] = true
gitlab_rails['db_database'] = "gitlabhq_production"
gitlab_rails['db_username'] = "gitlab"
gitlab_rails['db_password'] = File.read('/run/secrets/gitlab-postgres-gitlab-password')
gitlab_rails['db_host'] = "postgres"
gitlab_rails['db_port'] = 5432

#### Redis ####
# Disable Gitlab Redis
redis['enable'] = false
gitlab_rails['redis_host'] = "redis"
gitlab_rails['redis_port'] = 6379
gitlab_rails['redis_ssl'] = false
gitlab_rails['redis_password'] = nil
gitlab_rails['redis_database'] = 0
gitlab_rails['redis_enable_client'] = true

#### Docker Registry ####
# Gilab registry
registry['enable'] = false
registry_nginx['enable'] = false

# Settings used by GitLab application
# gitlab_rails['registry_enabled'] = true
# gitlab_rails['registry_host'] = "localhost"
# gitlab_rails['registry_port'] = "5000"
# registry['registry_http_addr'] = "localhost:5000"
registry_external_url 'https://registry.hackinglab.local:5000'


#### NGINX ####
# Docker NGINX handling HTTP
nginx['listen_https'] = false

#### Let's encrypt ####
# No need for Let's Encrypt
letsencrypt['enable'] = false

#### Monitoring ####
# Disable all the unnecessary monitoring
monitoring_role['enable'] = false
grafana['enable'] = false
prometheus['enable'] = false
alertmanager['enable'] = false
node_exporter['enable'] = false
redis_exporter['enable'] = false
pgbouncer_exporter['enable'] = false
gitlab_exporter['enable'] = false
prometheus_monitoring['enable'] = false

#### Kubernetes ####
gitlab_kas['enable'] = false

#### Mattermost ####
mattermost['enable'] = false

#### E-mail ####
gitlab_rails['smtp_enable'] = false