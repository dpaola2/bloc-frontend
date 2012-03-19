require 'sinatra/base'
require 'haml'

class MyApp < Sinatra::Base

  get "/" do
    haml :index
  end
end
