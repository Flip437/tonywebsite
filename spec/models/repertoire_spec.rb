require 'rails_helper'

RSpec.describe Repertoire, type: :model do
  context 'Category association' do
    it "should incremente category count" do
      rep = Repertoire.new(title: 'Nouveau Morceau')
      rep.category = Category.new(name: 'Opéra')
      rep.save
      expect(Repertoire.count).to eq(1)
      expect(Category.count).to eq(1)
    end
  end
end
