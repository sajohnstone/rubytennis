# frozen_string_literal: true

# spec/tennis_spec.rb
require 'tennisscoring'

describe TennisScoring do
  context 'when initilised' do
    it 'should respond with love love' do
      subject { described_class.new }
      expect(subject.show_score).to eql('0 0')
    end
  end

  context 'when scoring starts' do
    it 'when player one wins first ball' do
      subject { described_class.new }
      subject.score_point(1)
      expect(subject.show_score).to eql('1 0')
    end
  end
end
