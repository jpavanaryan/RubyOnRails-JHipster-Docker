# SwaggerClient::UserjwtcontrollerApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize_using_post**](UserjwtcontrollerApi.md#authorize_using_post) | **POST** /api/authenticate | authorize


# **authorize_using_post**
> JWTToken authorize_using_post(login_vm)

authorize

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserjwtcontrollerApi.new

login_vm = SwaggerClient::LoginVM.new # LoginVM | loginVM


begin
  #authorize
  result = api_instance.authorize_using_post(login_vm)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserjwtcontrollerApi->authorize_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login_vm** | [**LoginVM**](LoginVM.md)| loginVM | 

### Return type

[**JWTToken**](JWTToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



