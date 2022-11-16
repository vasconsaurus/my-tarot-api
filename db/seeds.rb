# frozen_string_literal: true

require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

parsed_cards = JSON.parse(File.read(Rails.root.join('db/card_data.json')))

parsed_cards.each do |card|
  Card.create!(card)
end

  # Card.create!(
  #   name_short: 'test',
  #   name: 'test',
  #   value: 'test',
  #   value_int: 1,
  #   meaning_up: 'test',
  #   meaning_rev: 'test',
  #   card_description: 'test',
  #   type_of_card: 'test'
  # )
