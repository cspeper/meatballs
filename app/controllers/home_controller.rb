class HomeController < ApplicationController
  def index
    response = HTTParty.get("http://www.thesmilenyc.com/?tab=smile-to-go-menus#smile-to-go")
    page = Capybara.string(response.body)
    @meatballs = !!page.find("#smile-to-go-menus #dinner").text.match(/protein.*meatball/mi)
  end
end
