FactoryBot.define do
  factory :category do
        title     { 'China' }
        bytitle   { 'china' }
        keywords  { Faker::Lorem.sentence(word_count: 10) }
        description  { Faker::Lorem.sentence(word_count: 10) }
    end
  end