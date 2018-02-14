# SwaggerClient::ProjectresourceApi

All URIs are relative to *https://localhost:8080/timesheets*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project_using_post**](ProjectresourceApi.md#create_project_using_post) | **POST** /api/projects | createProject
[**delete_project_using_delete**](ProjectresourceApi.md#delete_project_using_delete) | **DELETE** /api/projects/{id} | deleteProject
[**get_all_projects_using_get**](ProjectresourceApi.md#get_all_projects_using_get) | **GET** /api/projects | getAllProjects
[**get_project_using_get**](ProjectresourceApi.md#get_project_using_get) | **GET** /api/projects/{id} | getProject
[**update_project_using_put**](ProjectresourceApi.md#update_project_using_put) | **PUT** /api/projects | updateProject


# **create_project_using_post**
> Project create_project_using_post(project)

createProject

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectresourceApi.new

project = SwaggerClient::Project.new # Project | project


begin
  #createProject
  result = api_instance.create_project_using_post(project)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectresourceApi->create_project_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)| project | 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_project_using_delete**
> delete_project_using_delete(id)

deleteProject

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectresourceApi.new

id = 789 # Integer | id


begin
  #deleteProject
  api_instance.delete_project_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectresourceApi->delete_project_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_all_projects_using_get**
> Array&lt;Project&gt; get_all_projects_using_get(opts)

getAllProjects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectresourceApi.new

opts = { 
  page: 56, # Integer | Page number of the requested page
  size: 56, # Integer | Size of a page
  sort: ["sort_example"] # Array<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
}

begin
  #getAllProjects
  result = api_instance.get_all_projects_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectresourceApi->get_all_projects_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number of the requested page | [optional] 
 **size** | **Integer**| Size of a page | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_project_using_get**
> Project get_project_using_get(id)

getProject

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectresourceApi.new

id = 789 # Integer | id


begin
  #getProject
  result = api_instance.get_project_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectresourceApi->get_project_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update_project_using_put**
> Project update_project_using_put(project)

updateProject

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectresourceApi.new

project = SwaggerClient::Project.new # Project | project


begin
  #updateProject
  result = api_instance.update_project_using_put(project)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectresourceApi->update_project_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)| project | 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



