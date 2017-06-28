class PokemonController < ApplicationController

  def index
    res = Typhoeus.get(res = Typhoeus.get("https://api.giphy.com/v1/gifs/search?api_key=YOUR_KEY_HERE&q=pikachu&rating=g", followlocation: true)

    body = JSON.parse(res.body)
    render json: {
    name: body["name"],
    id: body["id"],
    types: body["types"].map do |type|
      type["type"]["name"]
end

}
  end
end
