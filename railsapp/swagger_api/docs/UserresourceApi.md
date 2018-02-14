# SwaggerClient::UserresourceApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_using_post**](UserresourceApi.md#create_user_using_post) | **POST** /api/users | createUser
[**delete_user_using_delete**](UserresourceApi.md#delete_user_using_delete) | **DELETE** /api/users/{login} | deleteUser
[**get_all_users_using_get**](UserresourceApi.md#get_all_users_using_get) | **GET** /api/users | getAllUsers
[**get_authorities_using_get**](UserresourceApi.md#get_authorities_using_get) | **GET** /api/users/authorities | getAuthorities
[**get_user_using_get**](UserresourceApi.md#get_user_using_get) | **GET** /api/users/{login} | getUser
[**update_user_using_put**](UserresourceApi.md#update_user_using_put) | **PUT** /api/users | updateUser


# **create_user_using_post**
> User create_user_using_post(user_dto)

createUser

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserresourceApi.new

user_dto = SwaggerClient::UserDTO.new # UserDTO | userDTO


begin
  #createUser
  result = api_instance.create_user_using_post(user_dto)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserresourceApi->create_user_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_dto** | [**UserDTO**](UserDTO.md)| userDTO | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_user_using_delete**
> delete_user_using_delete(login)

deleteUser

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserresourceApi.new

login = "login_example" # String | login


begin
  #deleteUser
  api_instance.delete_user_using_delete(login)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserresourceApi->delete_user_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_all_users_using_get**
> Array&lt;UserDTO&gt; get_all_users_using_get(opts)

getAllUsers

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserresourceApi.new

opts = { 
  page: 56, # Integer | Page number of the requested page
  size: 56, # Integer | Size of a page
  sort: ["sort_example"] # Array<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
}

begin
  #getAllUsers
  result = api_instance.get_all_users_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserresourceApi->get_all_users_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number of the requested page | [optional] 
 **size** | **Integer**| Size of a page | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**Array&lt;UserDTO&gt;**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_authorities_using_get**
> Array&lt;String&gt; get_authorities_using_get

getAuthorities

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserresourceApi.new

begin
  #getAuthorities
  result = api_instance.get_authorities_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserresourceApi->get_authorities_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_user_using_get**
> UserDTO get_user_using_get(login)

getUser

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserresourceApi.new

login = "login_example" # String | login


begin
  #getUser
  result = api_instance.get_user_using_get(login)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserresourceApi->get_user_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | 

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update_user_using_put**
> UserDTO update_user_using_put(user_dto)

updateUser

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserresourceApi.new

user_dto = SwaggerClient::UserDTO.new # UserDTO | userDTO


begin
  #updateUser
  result = api_instance.update_user_using_put(user_dto)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserresourceApi->update_user_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_dto** | [**UserDTO**](UserDTO.md)| userDTO | 

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



