module Resources
  class Resource
    attr_reader :name, :description, :link, :category

    def initialize(name, description, link, category)
      @name = name
      @description = description
      @link = link
      @category = category

      raise InvalidCategoryError, category unless valid_category?
      end

    RESOURCE_CATEGORIES = %i[
      at_home_abortion
      funding
      other
    ]

    private

    def valid_category?
      RESOURCE_CATEGORIES.include? category
    end
  end
end