describe Sulfuras do
    it 'returns item info as a string' do
        sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 10, 50)
        expect(sulfuras.to_s).to eq "Sulfuras, Hand of Ragnaros, 10, 50"
    end

    it "doesn't increase or decrease the item quality or sell_in" do
        sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 10, 50)
        sulfuras.update_item
        expect(sulfuras.to_s).to eq "Sulfuras, Hand of Ragnaros, 10, 50"
    end

end