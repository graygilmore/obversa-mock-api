require "sinatra"
require "sinatra/contrib"
require "json"

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
