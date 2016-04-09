require "sinatra/base"
require "sinatra/contrib"
require "json"

module Obversa
  module API
    class Application < Sinatra::Base
      register Sinatra::Namespace

      set :port, 9494

      namespace "/api" do
        get "/products.json" do
          json(send_file("mocks/products.json"))
        end
      end
    end
  end
end
