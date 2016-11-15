# Rack

**Rack** es una gema que provee una interface entre WebServers y Frameworks basados en Ruby. 

To use Rack, provide an "app": an object that responds to the call method, taking the environment hash as a parameter, and returning an Array with three elements:

   The HTTP response code
   A Hash of headers
   The response body, which must respond to each
