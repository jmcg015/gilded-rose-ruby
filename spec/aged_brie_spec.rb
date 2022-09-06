describe AgedBrie do
    it "returns item properties as string" do
        aged_brie = AgedBrie.new("Aged Brie", 10, 50)
        expect(aged_brie.to_s).to eq "Aged Brie, 10, 50"
    end

    it "increases the quality as it gets older" do
        aged_brie = AgedBrie.new("Aged Brie", 10, 40)
        aged_brie.update_item
        expect(aged_brie.to_s).to eq "Aged Brie, 9, 41"
    end
end