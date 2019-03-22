# # encoding: utf-8

# Inspec test for recipe bioelite_firewall::ssh

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?

  expected_rules = [
    %r{ 22/tcp + ALLOW IN + 10.0.0.0/16}
  ]

  describe command('ufw status numbered') do
    expected_rules.each do |r|
      its('stdout') { should match(r) }
    end
  end

end
