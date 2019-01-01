class MarvelImagesScraper
  def self.scrape
    browser = Watir::Browser.new(:chrome)

    browser.goto('https://www.marvel.com/movies')
    doc = Nokogiri::HTML.parse(browser.html)
    content_wrapper = doc.css("div[class='content-grid grid-wrapper']")

    scraped_images = content_wrapper.css("div[class='card-content-frame']").map do |film|
      film.css("img[class='card-thumb-frame__thumbnail img__blur img__blur--focusIn']").first['src']
    end

    browser.close
    scraped_images
  end
end
