# SwaggerClient::GatewayresourceApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**active_routes_using_get**](GatewayresourceApi.md#active_routes_using_get) | **GET** /api/gateway/routes | activeRoutes


# **active_routes_using_get**
> Array&lt;RouteVM&gt; active_routes_using_get

activeRoutes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GatewayresourceApi.new

begin
  #activeRoutes
  result = api_instance.active_routes_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GatewayresourceApi->active_routes_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;RouteVM&gt;**](RouteVM.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



