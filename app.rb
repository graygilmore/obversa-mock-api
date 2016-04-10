require "sinatra/base"
require "sinatra/contrib"
require "json"

module Obversa
  module API
    class Application < Sinatra::Base
      register Sinatra::Namespace

      set :port, 9494

      namespace "/api" do
        get("/products.json") { json(send_file("mocks/products.json")) }
        get("/products/:id.json") { json(send_file("mocks/products/1.json")) }
      end
    end
  end
end
