# frozen_string_literal: true

name 'interop-demo'
maintainer 'Brett Johnson'
maintainer_email 'brett@sdbrett.com'
license 'Apache2'
description 'Installs/Configures interop-demo'
long_description 'Installs/Configures interop-demo'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/interop-demo/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/interop-demo'

depends 'httpd', '~> 0.6.2'
depends 'apt'
