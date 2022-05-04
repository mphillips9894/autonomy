class Resource
 def initialize(name, description, link)
    @name = name
    @description = description
    @link = link
  end

  attr_reader :name, :description, :link
end
