require "rails_helper"
#require "spec_helper"
#


describe Tag do
    before do
      @params = {}
    end
    context 'Pattern A' do
    it 'ssss' do
      tag = Tag.create(@params.merge({name: 'test'})
      expect(tag.name).to eq 'test'
    end
    context 'Pattern B' do
    it 'ssss' do
      tag = Tag.create(@params.merge({name: 'hhhoggg'})
      expect(tag.name).to eq 'test'
    end
  end
end


