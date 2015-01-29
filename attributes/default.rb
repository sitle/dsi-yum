
default['dsi-yum']['repository_name'] = 'dsi'
default['dsi-yum']['description'] = 'DSI Internal Repository'
default['dsi-yum']['make_cache'] = true
default['dsi-yum']['ssl_verify'] = true

default['dsi-yum']['redhat']['repository'] = 'http://yum.rhel.repository.dev'
default['dsi-yum']['redhat']['key_name'] = 'RPM-GPG-KEY-redhat-release'

default['dsi-yum']['oracle']['repository'] = 'http://yum.oel.repository.dev'
default['dsi-yum']['oracle']['key_name'] = 'RPM-GPG-KEY'

default['dsi-yum']['centos']['repository'] = 'http://yum.centos.repository.dev'
default['dsi-yum']['centos']['key_name'] = 'RPM-GPG-KEY-CentOS-6'
