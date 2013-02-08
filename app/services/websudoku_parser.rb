require "nokogiri"

class WebsudokuParser
  def initialize(page)
    @page = page
    @xml = Nokogiri::HTML.parse(@page)
  end

  def cheat
    @xml.xpath('//input[@id="cheat"]').first["value"]
  end

  def editmask
    @xml.xpath('//input[@id="editmask"]').first["value"]
  end
end