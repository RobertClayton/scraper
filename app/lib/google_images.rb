class GoogleImagesScraper
  def self.scrape(list)
    browser = Watir::Browser.new(:chrome)

    scraped_images = list.map do |i|
      browser.goto('images.google.com')
      browser.text_field(title: 'Search').set i
      browser.send_keys :enter
      sleep 1
      doc = Nokogiri::HTML.parse(browser.html)
      doc.at_css('div#ires img')['src']
    end

    browser.close
    scraped_images
  end
end
