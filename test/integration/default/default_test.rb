# # encoding: utf-8

# Inspec test for recipe bioelite_firewall::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?

  describe service('ufw') do
    it { should be_enabled }
  end
    
end
