# SwaggerClient::ProfileinforesourceApi

All URIs are relative to *https://localhost:8080/timesheets*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_active_profiles_using_get**](ProfileinforesourceApi.md#get_active_profiles_using_get) | **GET** /api/profile-info | getActiveProfiles


# **get_active_profiles_using_get**
> ProfileInfoVM get_active_profiles_using_get

getActiveProfiles

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ProfileinforesourceApi.new

begin
  #getActiveProfiles
  result = api_instance.get_active_profiles_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProfileinforesourceApi->get_active_profiles_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProfileInfoVM**](ProfileInfoVM.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



