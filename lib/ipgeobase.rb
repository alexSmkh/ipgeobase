# frozen_string_literal: true

require "addressable/uri"
require "happymapper"
require "net/http"

require_relative "ipgeobase/version"
require_relative "./ipgeobase/ip_meta"

# Description/Explanation of Ipgeobase module
module Ipgeobase
  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    res = Net::HTTP.get_response(uri)
    result = res.body if res.is_a?(Net::HTTPSuccess)
    raise "Failed to get data" if result.nil?

    IpMeta.parse(result)
  end
end
