require "granite/adapter/pg"
require "json"

Granite::Connections << Granite::Adapter::Pg.new(name: "pg", url: "postgresql://benji:hanamiharbor@localhost:5432/posts")

class Post < Granite::Base
  connection pg
  table posts # Name of the table to use for the model, defaults to class name snake cased

  column id : Int64, primary: true # Primary key, defaults to AUTO INCREMENT
  column title : String # Not nil field
  column body : String? # Nilable field
  column published : Bool
end
