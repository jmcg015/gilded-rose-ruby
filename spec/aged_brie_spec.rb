describe AgedBrie do
    it "returns item properties as string" do
        aged_brie = AgedBrie.new("Aged Brie", 10, 50)
        expect(aged_brie.to_s).to eq "Aged Brie, 10, 50"
    end
end