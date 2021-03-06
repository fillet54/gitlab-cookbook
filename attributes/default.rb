default['gitlab']['user'] = "git"
default['gitlab']['group'] = "git"
default['gitlab']['home'] = "/home/git/"
default['gitlab']['shell_path'] = "/home/git/gitlab-shell"
default['gitlab']['repos_path'] = "/home/git/repositories"
default['gitlab']['path'] = "/home/git/gitlab"
default['gitlab']['satellites_path'] = "/home/git/gitlab-satellites"
default['gitlab']['rails_env'] = 'production'
default['gitlab']['repository'] = "https://github.com/gitlabhq/gitlabhq.git"
# Set sync_repository to false for development (eg: when Vagrant handles syncing of the codebase)
default['gitlab']['sync_repository'] = true
default['gitlab']['revision'] = 'v5.3.0'
default['gitlab']['shell_revision'] = 'v1.5.0'
default['gitlab']['http_port'] = '80'
default['gitlab']['https_port'] = '443'
default['gitlab']['database_name'] = 'gitlabhq'
# For development, set bundle_install_cmd = "bundle install --without postgres"
default['gitlab']['bundle_install_cmd'] = "bundle install --deployment --without development test postgres"

# Url to gitlab instance. Used for api calls
default['gitlab']['url'] = "http://localhost/"

## Gitlab.yml config
if platform?("amazon")
default['gitlab']['host'] = '$HOSTNAME'
else
default['gitlab']['host'] = 'localhost'
end
default['gitlab']['email_from'] = 'gitlab@localhost'
default['gitlab']['support_email'] = 'support@localhost'
default['gitlab']['socket'] = '/tmp/gitlab.socket'

# Default Project Settings
default['gitlab']['default_projects_limit'] = 10

## Root user
default['gitlab']['root']['email'] = 'admin@local.host'
default['gitlab']['root']['name'] = 'Administrator'
default['gitlab']['root']['username'] = 'root'
default['gitlab']['root']['password'] = '5iveL!fe'

# SSL configuration
default['gitlab']['ssl'] = false
default['gitlab']['ssl_crt_path'] = ''
default['gitlab']['ssl_key_path'] = ''

# LDAP configuration
default['gitlab']['ldap']['enabled'] = false
default['gitlab']['ldap']['host'] = 'localhost'
default['gitlab']['ldap']['base'] = 'dc=localhost'
default['gitlab']['ldap']['port'] = 636
default['gitlab']['ldap']['uid'] = 'uid'
default['gitlab']['ldap']['method'] = 'ssl'
default['gitlab']['ldap']['bind_dn'] = 'uid=diradmin,dc=localhost'
default['gitlab']['ldap']['password'] = 'ldappass'
