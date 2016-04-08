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
          json([
            {
              name: "T-Shirt",
              price: "$9.99"
            },
            {
              name: "Toque",
              price: "$30.75"
            }
          ])
        end
      end
    end
  end
end
