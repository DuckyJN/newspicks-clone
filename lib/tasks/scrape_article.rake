namespace :scrape_article do
  desc "TODO"
  task scrape_techcrunch: :environment do
    page_url = "https://jp.techcrunch.com/page/2/"
    page = Nokogiri::HTML(open(page_url))
    article_list = page.css('.river-block').css('.block').css('.block-thumb')
    article_list.each do |entry|
      title = entry.css('div.block-content').css('h2.post-title').css('a').text
      if (title != "")
        scraper = Article.find_or_initialize_by(title: title)
        scraper.site = "TechCrunch"
        scraper.body = entry.css('div.block-content').css('p.excerpt').text
        scraper.image = entry.css('div.block-content').css('a').css('img').map{ |i| i['src'] }.join
        scraper.link = entry.css('div.block-content').css('p.excerpt').css('a').map{ |i| i['href'] }.join
        scraper.save!
        puts title
      end
    end
  end

  desc "TODO"
  task scrape_cnet: :environment do
  end

end
