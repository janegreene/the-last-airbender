class AirbenderService
  def nation_members(search_nation)
    search_nation.gsub!('_', '+')
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com") do |faraday|
      faraday.params["affiliation"] = 'nation'
    end

    response = conn.get("api/v1/characters") do
      conn.params['affiliation'] = search_nation
    end
    payload = JSON.parse(response.body, symbolize_names: true)
    members = payload.map do |member_data|
      Member.new(member_data)
    end
  end
end
