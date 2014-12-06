# myapp.rb
require 'sinatra'
require 'json'
require 'byebug'
require 'sinatra/activerecord'
require './models/task'

# set :database_file, './config/database.yml'
set :port, 3005

get '/tasks' do
  @tasks = Task.search(params[:q]).limit(20)
  @tasks.to_json
end
