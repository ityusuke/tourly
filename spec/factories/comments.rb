# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    content { 'MyString' }
    user { nil }
    tour { nil }
  end
end
