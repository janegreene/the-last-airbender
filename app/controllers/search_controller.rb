
class SearchController < ApplicationController
  def index
    search_nation = params['nation'].gsub('_', '+')
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")#do |faraday|
    #   faraday.params["affiliation"] = 'nation'
    # end
    #
    response = conn.get("api/v1/characters?affiliation=#{search_nation}")
    payload = JSON.parse(response.body, symbolize_names: true)
    # # @characters = json[:results].map do |character_data|
    # #   Character.new(character_data)
    # end
  end
end
