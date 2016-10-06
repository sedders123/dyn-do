require 'droplet_kit'
require 'socket'
require 'open-uri'

DOMAIN = 'example.com'
SUB_DOMAIN = 'home'

client = DropletKit::Client.new(access_token: ENV["DO_ACCESS_TOKEN"])

records = client.domain_records.all(for_domain: DOMAIN)

for record in records.each
    if record.name == SUB_DOMAIN
        record = record
    end
end

record.data = open('http://ident.me').read

client.domain_records.update(record, for_domain: DOMAIN , id: record.id)
