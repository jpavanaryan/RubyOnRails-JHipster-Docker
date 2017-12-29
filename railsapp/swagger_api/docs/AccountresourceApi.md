# SwaggerClient::AccountresourceApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_account_using_get**](AccountresourceApi.md#activate_account_using_get) | **GET** /api/activate | activateAccount
[**change_password_using_post**](AccountresourceApi.md#change_password_using_post) | **POST** /api/account/change-password | changePassword
[**finish_password_reset_using_post**](AccountresourceApi.md#finish_password_reset_using_post) | **POST** /api/account/reset-password/finish | finishPasswordReset
[**get_account_using_get**](AccountresourceApi.md#get_account_using_get) | **GET** /api/account | getAccount
[**is_authenticated_using_get**](AccountresourceApi.md#is_authenticated_using_get) | **GET** /api/authenticate | isAuthenticated
[**register_account_using_post**](AccountresourceApi.md#register_account_using_post) | **POST** /api/register | registerAccount
[**request_password_reset_using_post**](AccountresourceApi.md#request_password_reset_using_post) | **POST** /api/account/reset-password/init | requestPasswordReset
[**save_account_using_post**](AccountresourceApi.md#save_account_using_post) | **POST** /api/account | saveAccount


# **activate_account_using_get**
> activate_account_using_get(key)

activateAccount

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

key = "key_example" # String | key


begin
  #activateAccount
  api_instance.activate_account_using_get(key)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->activate_account_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| key | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **change_password_using_post**
> change_password_using_post(password)

changePassword

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

password = "password_example" # String | password


begin
  #changePassword
  api_instance.change_password_using_post(password)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->change_password_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**| password | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **finish_password_reset_using_post**
> finish_password_reset_using_post(key_and_password)

finishPasswordReset

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

key_and_password = SwaggerClient::KeyAndPasswordVM.new # KeyAndPasswordVM | keyAndPassword


begin
  #finishPasswordReset
  api_instance.finish_password_reset_using_post(key_and_password)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->finish_password_reset_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_and_password** | [**KeyAndPasswordVM**](KeyAndPasswordVM.md)| keyAndPassword | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_account_using_get**
> UserDTO get_account_using_get

getAccount

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

begin
  #getAccount
  result = api_instance.get_account_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->get_account_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **is_authenticated_using_get**
> String is_authenticated_using_get

isAuthenticated

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

begin
  #isAuthenticated
  result = api_instance.is_authenticated_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->is_authenticated_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **register_account_using_post**
> register_account_using_post(managed_user_vm)

registerAccount

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

managed_user_vm = SwaggerClient::ManagedUserVM.new # ManagedUserVM | managedUserVM


begin
  #registerAccount
  api_instance.register_account_using_post(managed_user_vm)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->register_account_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **managed_user_vm** | [**ManagedUserVM**](ManagedUserVM.md)| managedUserVM | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **request_password_reset_using_post**
> request_password_reset_using_post(mail)

requestPasswordReset

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

mail = "mail_example" # String | mail


begin
  #requestPasswordReset
  api_instance.request_password_reset_using_post(mail)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->request_password_reset_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mail** | **String**| mail | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **save_account_using_post**
> save_account_using_post(user_dto)

saveAccount

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountresourceApi.new

user_dto = SwaggerClient::UserDTO.new # UserDTO | userDTO


begin
  #saveAccount
  api_instance.save_account_using_post(user_dto)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountresourceApi->save_account_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_dto** | [**UserDTO**](UserDTO.md)| userDTO | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



