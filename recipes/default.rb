#
# Cookbook:: bioelite_firewall
# Recipe:: default
#
# Copyright:: 2018, Nghiem Ba Hieu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
firewall 'default'

firewall_rule 'ssh' do
  port 22
  source '10.0.0.0/16'
  command :allow
end

trusted_ips = node['bioelite_firewall']['trusted_ips']

include_recipe 'bioelite_firewall::ssh' unless trusted_ips.empty?
include_recipe 'bioelite_firewall::web' if node['bioelite_firewall']['allow_web']
