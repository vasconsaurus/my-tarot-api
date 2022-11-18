# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards
  end

  def random
    cards = Card.all.sample(4)
    render json: cards
  end
end
