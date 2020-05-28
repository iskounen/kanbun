# frozen_string_literal: true

require 'word'

RSpec.describe Word, '#<=>' do
  context 'with this word positioned before the other word' do
    context 'with a レ点 mark on this word' do
      it 'returns 1' do
        expect(Word.new('行', 1, 'レ') <=> Word.new('海', 2)).to eq(1)
      end
    end
    context 'with no reverse marker on this word' do
      it 'returns -1' do
        expect(Word.new('君', 1) <=> Word.new('事', 2)).to eq(-1)
      end
    end
  end
end
