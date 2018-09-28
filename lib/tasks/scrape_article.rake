
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
        puts scraper.image
      end
    end
  end

  desc "TODO"
  task scrape_cnet: :environment do
    PAGE_URL = "https://japan.cnet.com"
    def article_links
      page = Nokogiri::HTML(open(PAGE_URL))
      article_list = page.css('div#center-column.nocontent').css('div.content-article-inner')
      article_list.each do |entry|
        if article_list.at_css('div.content-article-full')
          retrieve_info(entry.css('div.content-article-full'))
        end
        if article_list.at_css('div.content-article-left')
          retrieve_info(entry.css('div.content-article-left'))
        end
        if article_list.at_css('div.content-article-right')
          retrieve_info(entry.css('div.content-article-right'))
        end
      end
    end
    
    def retrieve_info(info)
        title = info.css('div.content-article-text').css('h3.text-main').css('a').text
        body = retrieve_body(info.css('div.content-article-text').css('h3.text-main').css('a').map{ |i| i['href'] })
        if (title != "")
          scraper = Article.find_or_initialize_by(title: title)
          scraper.site = "CNet"
          # scraper.date = info.css('div.content-article-text').css('span.date').text
          scraper.body = retrieve_body(info.css('div.content-article-text').css('h3.text-main').css('a').map{ |i| i['href'] })
          scraper.image = PAGE_URL + (info.css('div.content-article-img').css('a').css('img').map{ |i| i['src'] }).join("")
          scraper.link = PAGE_URL + (info.css('div.content-article-text').css('h3.text-main').css('a').map{ |i| i['href'] }).join("")
          scraper.save!
        end
      puts title
    end

    def retrieve_body(url)
      page = Nokogiri::HTML(open(PAGE_URL + url.join("")))
      page.css('div.leaf-article-inner').css('p').first.text
    end
    article_links
  end

end
