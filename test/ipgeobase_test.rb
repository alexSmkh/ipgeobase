# frozen_string_literal: true

require "test_helper"
require "webmock/minitest"

class IpgeobaseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_ipgeobase_functionality
    testing_ip = "8.8.8.8"

    stub_request(:get, "http://ip-api.com/xml/#{testing_ip}")
      .to_return(body: File.read("test/fixtures/response.xml"))

    ip_meta = Ipgeobase.lookup(testing_ip)

    assert_equal("Ashburn", ip_meta.city)
    assert_equal("United States", ip_meta.country)
    assert_equal("US", ip_meta.countryCode)
    assert_equal(39.03, ip_meta.lat)
    assert_equal(-77.5, ip_meta.lon)
  end
end
