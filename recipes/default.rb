#
# Cookbook Name:: dsi-yum
# Recipe:: default
#
# Copyright (C) 2015 Leonard TAVAE
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'yum::default'

case node['platform']
when 'redhat'
  yum_repository node['dsi-yum']['repository_name'] do
    description node['dsi-yum']['description']
    baseurl node['dsi-yum']['redhat']['repository']
    gpgkey node['dsi-yum']['redhat']['repository'] + '/' + node['dsi-yum']['redhat']['key_name']
    make_cache node['dsi-yum']['make_cache']
    sslverify node['dsi-yum']['ssl_verify']
    action :create
  end
when 'oracle'
  yum_repository node['dsi-yum']['repository_name'] do
    description node['dsi-yum']['description']
    baseurl node['dsi-yum']['oracle']['repository']
    gpgkey node['dsi-yum']['oracle']['repository'] + '/' + node['dsi-yum']['oracle']['key_name']
    make_cache node['dsi-yum']['make_cache']
    sslverify node['dsi-yum']['ssl_verify']
    action :create
  end
when 'centos'
  yum_repository node['dsi-yum']['repository_name'] do
    description node['dsi-yum']['description']
    baseurl node['dsi-yum']['centos']['repository']
    gpgkey node['dsi-yum']['centos']['repository'] + '/' + node['dsi-yum']['centos']['key_name']
    make_cache node['dsi-yum']['make_cache']
    sslverify node['dsi-yum']['ssl_verify']
    action :create
  end
end
