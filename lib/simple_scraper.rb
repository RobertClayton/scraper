class SimpleScraper
  def self.marvel_films_scraper
    endpoint = 'https://www.marvel.com/movies'
    doc = Nokogiri::HTML.parse(open(endpoint))

    content_wrapper = doc.css("div[class='content-grid grid-wrapper']")

    content_wrapper.css("div[class='card-body']").map do |film|
      [
        film.css("p[class='card-body__headline']").text,
        film.css("p[class='card-footer__secondary-text']").text
      ]
    end
  end
end
