describe Sulfuras do
    it 'returns item info as a string' do
        sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 10, 50)
        expect(sulfuras.to_s).to eq "Sulfuras, Hand of Ragnaros, 10, 50"
    end
end