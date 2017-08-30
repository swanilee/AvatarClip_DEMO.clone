require 'open-uri'
class CrawlerController < ApplicationController
  def index
    url = "http://weather.naver.com/rgn/cityWetrMain.nhn"
    doc = Nokogiri::HTML(open(url))
    weather = doc.scc('span.temp')
  end
end
