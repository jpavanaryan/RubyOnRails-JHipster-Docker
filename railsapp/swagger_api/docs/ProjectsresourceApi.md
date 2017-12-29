# SwaggerClient::ProjectsresourceApi

All URIs are relative to *https://localhost:8080/timesheets*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_projects_using_post**](ProjectsresourceApi.md#create_projects_using_post) | **POST** /api/projects | createProjects
[**delete_projects_using_delete**](ProjectsresourceApi.md#delete_projects_using_delete) | **DELETE** /api/projects/{id} | deleteProjects
[**get_all_projects_using_get**](ProjectsresourceApi.md#get_all_projects_using_get) | **GET** /api/projects | getAllProjects
[**get_projects_using_get**](ProjectsresourceApi.md#get_projects_using_get) | **GET** /api/projects/{id} | getProjects
[**update_projects_using_put**](ProjectsresourceApi.md#update_projects_using_put) | **PUT** /api/projects | updateProjects


# **create_projects_using_post**
> Projects create_projects_using_post(projects)

createProjects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsresourceApi.new

projects = SwaggerClient::Projects.new # Projects | projects


begin
  #createProjects
  result = api_instance.create_projects_using_post(projects)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsresourceApi->create_projects_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projects** | [**Projects**](Projects.md)| projects | 

### Return type

[**Projects**](Projects.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_projects_using_delete**
> delete_projects_using_delete(id)

deleteProjects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsresourceApi.new

id = 789 # Integer | id


begin
  #deleteProjects
  api_instance.delete_projects_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsresourceApi->delete_projects_using_delete: #{e}"
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

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_all_projects_using_get**
> Array&lt;Projects&gt; get_all_projects_using_get

getAllProjects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsresourceApi.new

begin
  #getAllProjects
  result = api_instance.get_all_projects_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsresourceApi->get_all_projects_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Projects&gt;**](Projects.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_projects_using_get**
> Projects get_projects_using_get(id)

getProjects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsresourceApi.new

id = 789 # Integer | id


begin
  #getProjects
  result = api_instance.get_projects_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsresourceApi->get_projects_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

[**Projects**](Projects.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_projects_using_put**
> Projects update_projects_using_put(projects)

updateProjects

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProjectsresourceApi.new

projects = SwaggerClient::Projects.new # Projects | projects


begin
  #updateProjects
  result = api_instance.update_projects_using_put(projects)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProjectsresourceApi->update_projects_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projects** | [**Projects**](Projects.md)| projects | 

### Return type

[**Projects**](Projects.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



