#binding.pry

#require 'active_resource'


class ProjectsResource < ActiveResource::Base
	  headers["Authorization"] = RailsappSwaggerClient.instance.authenticate
  	self.site =  "http://dockercompose_gateway_timesheets-app_1:8080/timesheets/api/"
  	self.include_format_in_path = false
end