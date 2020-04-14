require 'rails_helper'

RSpec.describe Repertoire, type: :model do
  it "should persist a repertoire" do
    Repertoire.create(title: 'Nouveau Morceau')
    expect(Repertoire.count).to eq(1)
  end
end
