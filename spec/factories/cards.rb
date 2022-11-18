# frozen_string_literal: true

FactoryBot.define do
  factory :card do
    type { '' }
    name_short { 'MyString' }
    name { 'MyString' }
    value { 'MyString' }
    value_int { 1 }
    meaning_up { 'MyString' }
    meaning_rev { 'MyString' }
    desc { 'MyString' }
  end
end
