require 'json'


MyApp.add_route('GET', '/personalAPIs/WorkingLibrary/1.0/authors', {
  "resourcePath" => "/Users",
  "summary" => "searches authors",
  "nickname" => "authors_get", 
  "responseClass" => "inline_response_200_1", 
  "endpoint" => "/authors", 
  "notes" => "Returns array based on author search params.",
  "parameters" => [
    {
      "name" => "first_name",
      "description" => "first name search parameter",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "last_name",
      "description" => "last name search parameter",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/personalAPIs/WorkingLibrary/1.0/books', {
  "resourcePath" => "/Users",
  "summary" => "searches books",
  "nickname" => "books_get", 
  "responseClass" => "AllBooks", 
  "endpoint" => "/books", 
  "notes" => "Returns array based on book search params.",
  "parameters" => [
    {
      "name" => "title",
      "description" => "title search parameter",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "author",
      "description" => "author search parameter",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    {
      "name" => "subject",
      "description" => "subject search parameter",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('DELETE', '/personalAPIs/WorkingLibrary/1.0/books/{id}', {
  "resourcePath" => "/Users",
  "summary" => "remove book resource",
  "nickname" => "books_id_delete", 
  "responseClass" => "Book", 
  "endpoint" => "/books/{id}", 
  "notes" => "Returns deleted object",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/personalAPIs/WorkingLibrary/1.0/books/{id}', {
  "resourcePath" => "/Users",
  "summary" => "returns book object",
  "nickname" => "books_id_get", 
  "responseClass" => "inline_response_200", 
  "endpoint" => "/books/{id}", 
  "notes" => "Returns array based of search params.",
  "parameters" => [
    {
      "name" => "id",
      "description" => "book id",
      "dataType" => "int",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/personalAPIs/WorkingLibrary/1.0/books', {
  "resourcePath" => "/Users",
  "summary" => "create new book resource",
  "nickname" => "books_post", 
  "responseClass" => "Book", 
  "endpoint" => "/books", 
  "notes" => "Creates a new book in the DB, on success returns book json object",
  "parameters" => [
    {
      "name" => "body",
      "description" => "book description",
      "dataType" => "New book object",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

