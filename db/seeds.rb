# frozen_string_literal: true

require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

parsed_cards = JSON.parse(Rails.root.join('db/card_data.json').read)

parsed_cards.each do |card|
  Card.create!(card)
end
