# frozen_string_literal: true

parsed_cards = JSON.parse(Rails.root.join('db/card_data.json').read)

parsed_cards.each do |card|
  Card.create!(card)
end
