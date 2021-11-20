# frozen_string_literal: true

require "happymapper"

class IpMeta
  include HappyMapper

  tag "query"
  element :city, String, tag: "city"
  element :country, String, tag: "country"
  element :country_code, String, tag: "countryCode"
  element :lon, Float, tag: "lon"
  element :lat, Float, tag: "lat"
end
