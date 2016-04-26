require 'sinatra/base'

class App < Sinatra::Base
  get "/" do

    'Hello, puma is up'
  end
end