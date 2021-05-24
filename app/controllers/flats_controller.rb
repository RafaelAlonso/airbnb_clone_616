require "open-uri"

class FlatsController < ApplicationController

  def home
    # pegar os flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def flat
    
    # vamos mostrar a info de um flat especifico
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(open(url).read)
    @flat1 = flats.find { |flat| flat['id'] == params['id'].to_i }
  end
end
