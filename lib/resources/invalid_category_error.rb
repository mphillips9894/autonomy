module Resources
  class InvalidCategoryError < StandardError
    def initialize(category)
      super category
    end
  end
end
