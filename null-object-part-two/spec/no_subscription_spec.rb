require 'spec_helper'

describe NoSubscription do
  describe '#has_mentoring?' do
    it 'returns false' do
      subscription = NoSubscription.new

      expect(subscription.has_mentoring?).to eq(false)
    end
  end

  describe '#price' do
    it 'returns 0 price' do
      subscription = NoSubscription.new

      expect(subscription.price).to eq(0)
    end
  end

  describe '#charge' do
    it 'does not charge the credit card' do
      price = double('price')
      credit_card = double('credit_card')
      credit_card.stub(:charge)
      subscription = NoSubscription.new

      subscription.charge(credit_card)

      expect(credit_card).to_not have_received(:charge).with(price)
    end
  end
end
