require 'cgi'
require 'set'
require 'uri'

class GoogleResultsParser

  def initialize(uris)
    @uris = uris
  end

  def frontpage_domains
    @frontpage_domains ||= fetch_domains
    return @forntpage_domains
  end

  private
  def fetch_domains
    domains = Set.new
    @uris.each do |uri|
      uri = URI("http://www.google.com/#{uri}")
      params = CGI.parse(uri.query)
      if params.has_key? 'q'
        query_uri = URI(params['q'].first)
        domains << query_uri.host
      end
    end

    return domains
  end

end
