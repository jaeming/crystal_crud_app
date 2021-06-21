require "json"
require "option_parser"
require "./models/*"

module Sugar
  VERSION = "0.1.0"

  action = ""
  params = {} of String => Bool | String

  enum Action
    Index
    Create
  end

  OptionParser.parse do |parser|
    parser.banner = "Crystal CRUD app"

    parser.on("-t ACTION", "--to=ACTION", "crud action") { |action_type| action = action_type }
    parser.on("-p PARAMS", "--with=PARAMS", "param payload") do |payload|
      params = Hash(String, Bool | String).from_json(payload)
    end
  end

  case Action.parse(action)
  when Action::Index
    post = Post.all.to_json
    post = Post.where(published: params["published"]).map{|i| i}.to_json if params.has_key?("published")
    puts post
  when Action::Create
    post = Post.create(params).to_json
    puts post
  end
end
