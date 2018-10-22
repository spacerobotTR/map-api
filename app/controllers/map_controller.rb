class MapController < ApplicationController
  def index
    @incidents = Incident.all
  end
end
