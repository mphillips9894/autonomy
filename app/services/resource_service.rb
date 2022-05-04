class ResourceService
  def self.resources
    [
      Resource.new(
        "Plan C",
        "Safe, at-home abortion pills by mail",
        "https://www.plancpills.org"
      ),
      Resource.new(
        "Four Thieves Vinegar Collective",
        "Video instructions for making abortion pills yourself",
        "https://archive.org/details/FTVDIYA"
      )
    ]
  end
end
