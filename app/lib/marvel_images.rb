class MarvelImagesScraper
  def self.scrape
    endpoint = 'https://www.marvel.com/movies'
    doc = Nokogiri::HTML.parse(open(endpoint))
    content_wrapper = doc.css("div[class='content-grid grid-wrapper']")

    scraped_images = content_wrapper.css("div[class='card-content-frame']").map do |film|
      film.css("img[class='card-thumb-frame__thumbnail img__blur']").first['src']
    end

    scraped_images
  end
end
