
class SearchController < ApplicationController
  def index
    @view_nation = params['nation'].gsub('_', ' ').titleize
    search_nation = params['nation'].gsub('_', '+')
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")#do |faraday|
    #   faraday.params["affiliation"] = 'nation'
    # end
    #
    response = conn.get("api/v1/characters?affiliation=#{search_nation}")
    payload = JSON.parse(response.body, symbolize_names: true)
    @members = payload.map do |member_data|
      Member.new(member_data)
    end
  end
end
