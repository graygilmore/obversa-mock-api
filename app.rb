require "sinatra/base"
require "sinatra/contrib"
require "json"
require "pry"

module Obversa
  module API
    class Application < Sinatra::Base
      register Sinatra::Namespace

      set :port, 9494

      namespace "/api" do
        get("/products.json") { json(send_file("mocks/products.json")) }
        get("/products/:id.json") { json(send_file("mocks/products/1.json")) }
        get("/taxonomies/:id.json") { json(send_file("mocks/taxonomies/1.json")) }
        get("/taxonomies/:taxonomy_id/taxons/:taxon_id.json") { json(send_file("mocks/taxons/1.json")) }
        get("/taxons/products.json") { json(send_file("mocks/taxons/products.json")) }
      end
    end
  end
end
