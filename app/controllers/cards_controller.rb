# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards
  end

  def random
    cards = Card.all.sample((params[:total].to_i))
    render json: cards
  end
end
