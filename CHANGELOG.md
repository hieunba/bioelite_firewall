# bioelite_firewall CHANGELOG

This file is used to list changes made in each version of the bioelite_firewall cookbook.

# 0.1.0

Requires Chef 13.0+ because the [firewall](https://supermarket.chef.io/cookbooks/chef-sugar) cookbook depends on [chef-sugar](https://supermarket.chef.io/cookbooks/chef-sugar) cookbook

Initial release.

- allow SSH by default and trust 10.0.0.0/16
- allow web by setting node['bioelite\_firewall']['allow\_web'] to true
- add additional addresses should be done using node['bioelite\_firewall']['trusted_ips'] array
