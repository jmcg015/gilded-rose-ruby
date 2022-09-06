describe NormalItem do
    it "returns item info as a string" do
        item = NormalItem.new("Backpack", 10, 20)
        expect(item.to_s).to eq "Backpack, 10, 20"
    end

    it "updates quality and sell_in" do
        item = NormalItem.new("Backpack", 10, 20)
        item.update_item
        expect(item.quality).to eq 19
        expect(item.sell_in).to eq 9
    end

end