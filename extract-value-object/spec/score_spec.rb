require 'spec_helper'

describe Score do
  context "implements equality" do
    it 'detects equal scores' do
      score1 = Score.new(90)
      score2 = Score.new(90)

      expect(score1).to eq score2
    end
  end

  context "invalid arguments" do
    it 'errors on negative score' do
      score = -1

      expect { Score.new(score).grade }.to raise_error ArgumentError
    end

    it 'errors on too large score' do
      score = 101

      expect { Score.new(score).grade }.to raise_error(ArgumentError)
    end
  end

  context "valid arguments" do
    it 'returns F when score < 60' do
      score = 59

      expect(Score.new(score).grade).to eq('F')
    end

    it 'returns D when score < 70' do
      score = 60

      expect(Score.new(score).grade).to eq('D')
    end

    it 'returns C when score < 80' do
      score = 70

      expect(Score.new(score).grade).to eq('C')
    end

    it 'returns B when score < 90' do
      score = 89

      expect(Score.new(score).grade).to eq('B')
    end

    it 'returns A when score >= 90' do
      score = 100

      expect(Score.new(score).grade).to eq('A')
    end
  end
end
