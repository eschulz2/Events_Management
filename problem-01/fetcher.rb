require 'nokogiri'

class Fetcher

  attr_reader :links

  def initialize(term)
    encoded_term = URI.encode(tern)
    uri = "http://www.google.com/search?q=#{encoded_term}"
    stream = open(uri)
    doc = Nokogiri::HTML(stream)
    @links = Array.new
    @l = Array.new
    doc.css('div#ires li.g h3.r a').each do |link|
      if link['href'] =~ /^\/url?/
        @links << URI("http://www.google.com/#{link['href']}")
      end
    end
  end

end
