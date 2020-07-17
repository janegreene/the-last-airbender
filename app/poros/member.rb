class Member
  attr_reader     :allies, :enemies, :photo, :name, :affiliation

  def initialize(attributes)
    @allies = attributes[:allies],
    @enemies = attributes[:enemies],
    @photo = attributes[:photoUrl],
    @name = attributes[:name],
    @affiliation = attributes[:affiliation]
  end
end
