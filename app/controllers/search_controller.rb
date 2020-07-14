
class SearchController < ApplicationController
  def index
    nation = params[:nation]

    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")do |faraday|
      faraday.params["affiliation"] = 'nation'
    end

    response = conn.get("api/v1/characters?affiliation=#{nation}.json")
    json = JSON.parse(response.body, symbolize_names: true)
    # require "pry"; binding.pry
    @characters = json[:results].map do |character_data|
      Character.new(character_data)
    end
  end
end
