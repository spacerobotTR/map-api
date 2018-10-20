json.extract! incident, :id, :street, :city, :zip, :dayofweek, :timeofday, :state, :incidenttype, :drnum, :weatherevent, :specialevent, :latitude, :longitude, :comments, :created_at, :updated_at
json.url incident_url(incident, format: :json)
