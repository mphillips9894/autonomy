require 'csv'

module Resources
  class CsvParser
    def self.parse(path)
      self.new(path).send(:parse)
    end

    attr_reader :path

    private

    def initialize(path)
      @path = path
    end

    def parse
      CSV.parse(File.read(path), headers: true).filter_map do |row|
        begin
          Resource.new(
            row["name"],
            row["description"],
            row["link"],
            row["category"].to_sym
          )
        rescue
          nil
        end
      end
    end
  end
end