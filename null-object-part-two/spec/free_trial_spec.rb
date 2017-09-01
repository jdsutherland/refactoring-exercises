require 'spec_helper'

describe FreeTrial do
  describe '#has_mentoring?' do
    it 'returns true' do
      subscription = FreeTrial.new

      expect(subscription.has_mentoring?).to eq(true)
    end
  end

  describe '#price' do
    it 'returns 0 price' do
      subscription = FreeTrial.new

      expect(subscription.price).to eq(0)
    end
  end

  describe '#charge' do
    it 'does not charge the credit card' do
      price = double('price')
      credit_card = double('credit_card')
      credit_card.stub(:charge)
      subscription = FreeTrial.new

      subscription.charge(credit_card)

      expect(credit_card).to_not have_received(:charge).with(price)
    end
  end
end

