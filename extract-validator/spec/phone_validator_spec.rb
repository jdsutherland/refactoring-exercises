require 'spec_helper'

class TestPerson
  include ActiveModel::Model
  validates :phone_number, presence: true, phone: true
  attr_accessor :phone_number
end

describe PhoneValidator do
  it 'fails if no number given' do
    person = TestPerson.new(phone_number: nil)

    expect(person).to be_invalid
  end

  it 'validates a valid NANP number' do
    valid_number1 = '1-234-567-8901'
    valid_number2 = '1-234-567-8901 ext 888'

    person1 = TestPerson.new(phone_number: valid_number1)
    person2 = TestPerson.new(phone_number: valid_number2)

    expect(person1).to be_valid
    expect(person1).to be_valid
  end

  it "does not validate if a phone number formatting is incorrect" do
    invalid_number = "++7777-777-777"

    invalid_person = TestPerson.new(phone_number: invalid_number)

    expect(invalid_person).not_to be_valid
  end
end
