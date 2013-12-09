scraper = Upton::Scraper.new("http://www.propublica.org", "section#river h1 a")
scraper.scrape_to_csv "output.csv" do |html|
  Nokogiri::HTML(html).search("#comments h2.title-link").map &:text
end