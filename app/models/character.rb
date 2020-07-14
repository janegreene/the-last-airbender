class Character
  attr_reader     :allies,
                  :enemies,
                  :photoUrl,
                  :name,
                  :affiliation


  def initialize(attributes)
    # require "pry"; binding.pry
    @allies = attributes[:allies],
    @enemies = attributes[:enemies],
    @photoUrl = attributes[:photoUrl],
    @name = attributes[:name],
    @affiliation = attributes[:affiliation]
  end
end
 # rails g migration CreateCharacters allies:string enemies:string photoUrl:string name:string affiliation:string
