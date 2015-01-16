class HomeController < ApplicationController
  def index
    response = HTTParty.get("http://www.smiletogonyc.com/")
    page = Capybara.string(response.body)
    @meatballs = !!page.find(".entrées").text.match(/meatball/)
  end
end
