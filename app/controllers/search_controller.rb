
class SearchController < ApplicationController
  def index
    nation = params[:nation]

    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")

    response = conn.get("api/v1/characters?affiliation=#{nation}.json")
  end
end
