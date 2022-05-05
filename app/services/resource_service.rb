class ResourceService
include Resources
  def self.resources
    CsvParser.parse 'app/assets/resources.csv'
  end
end
