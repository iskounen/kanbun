# frozen_string_literal: true

require 'sentence'
require 'word'

RSpec.describe Sentence, '#read' do
  context 'when the sentence is "行海"' do
    it 'returns "海行"' do
      words = []
      words << Word.new('行', 1, 'レ')
      words << Word.new('海', 2)
      sentence = Sentence.new(words)
      expect(sentence.read).to eq('海行')
    end
  end
  context 'when the sentence is "思君事"' do
    it 'returns "君事思"' do
      words = []
      words << Word.new('思', 1, '二')
      words << Word.new('君', 2)
      words << Word.new('事', 3, '一')
      sentence = Sentence.new(words)
      expect(sentence.read).to eq('君事思')
    end
  end
  context 'when the sentence is "有観梅花者"' do
    xit 'returns "梅花観者有"' do
      words = []
      words << Word.new('有', 1, '下')
      words << Word.new('観', 2, '二')
      words << Word.new('梅', 3)
      words << Word.new('花', 4, '一')
      words << Word.new('者', 5, '上')
      sentence = Sentence.new(words)
      expect(sentence.read).to eq('梅花観者有')

      # TODO: go back to word_spec.rb and make sure that 一二点 and 上下点 work as expected
    end
  end
end
