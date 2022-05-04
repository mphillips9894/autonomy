class ResourceController < ApplicationController
  def index
    @resources = ResourceService.resources
  end
end
