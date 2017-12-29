json.extract! project, :id, :projectname, :projectlocation, :created_at, :updated_at
json.url project_url(project, format: :json)
