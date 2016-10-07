require 'droplet_kit'
require 'socket'
require 'open-uri'

DOMAIN = 'example.com'
SUB_DOMAIN = 'home'

client = DropletKit::Client.new(access_token: ENV["DO_ACCESS_TOKEN"])

domain_records = client.domain_records.all(for_domain: DOMAIN)

for domain_record in domain_records.each
    if domain_record.name == SUB_DOMAIN
        record = domain_record
    end
end

record.data = open('http://ident.me').read

client.domain_records.update(record, for_domain: DOMAIN , id: record.id)

puts "{sub_domain}.{domain} now points to {ip}" % { :sub_domain => SUB_DOMAIN, :domain => DOMAIN, :ip => record.data }
