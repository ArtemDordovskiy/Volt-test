require 'nokogiri'
require 'open-uri'

class MainController < Volt::ModelController

  def index
    # Add code for when the index view is loaded
  end

  def about
    # Add code for when the about view is loaded
  end

  def ruby_news
    ruby_news_page = Nokogiri::HTML('https://www.ruby-lang.org/en/news/')
    ruby_news_page.css('.post') do |node|
      page._ruby_news << { title: node.css('h3 a').text }
    end
  end

  def rails_news
    rails_news_url = 'http://weblog.rubyonrails.org/'
  end

  private

  # the main template contains a #template binding that shows another
  # template.  This is the path to that template.  It may change based
  # on the params._controller and params._action values.
  def main_path
    params._controller.or('main') + '/' + params._action.or('index')
  end
end
