require 'rails_helper'

class Person < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
end

RSpec.describe Person, type: :model do
  it 'is invalid without a first name' do
    person = Person.new(first_name: nil)
    expect(person).not_to be_valid
  end

  it 'is invalid without a last name' do
    person = Person.new(first_name: 'Bob', last_name: nil)
    expect(person).not_to be_valid
  end
end
