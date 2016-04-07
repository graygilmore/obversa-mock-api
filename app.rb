require "sinatra"
require "json"

set :port, 9494

get "/products" do
  content_type :json
  [
    {
      name: "T-Shirt",
      price: "$9.99"
    },
    {
      name: "Toque",
      price: "$30.75"
    }
  ].to_json
end
