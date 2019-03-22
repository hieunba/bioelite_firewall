#
# Cookbook:: bioelite_firewall
# Recipe:: ssh
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

node['bioelite_firewall']['trusted_ips'].each do |remote_source|
  firewall_rule "ssh from #{remote_source}" do
    port 22
    source remote_source
    command :allow
  end
end
