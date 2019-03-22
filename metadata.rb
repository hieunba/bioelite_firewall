name 'bioelite_firewall'
maintainer 'Nghiem Ba Hieu'
maintainer_email 'hi3unb@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures bioelite_firewall'
long_description 'Installs/Configures bioelite_firewall'
version '0.1.0'
chef_version '>= 13.0.113' if respond_to?(:chef_version)

supports 'ubuntu', '>= 16.04'

depends 'firewall', '~> 2.7.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/bioelite_firewall/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/bioelite_firewall'
