describe Conjured do
    it "Returns item info as a string" do
        item = Conjured.new("Magic sword", 10, 20)
        expect(item.to_s).to eq "Magic sword, 10, 20"
    end

    it "reduces quality by 2" do
        item = Conjured.new("Magic sword", 10, 20)
        item.update_item
        expect(item.quality).to eq 18
    end

    it "reduces quality by 4 if sell-by date exceeded" do
        item = Conjured.new("Magic sword", 1, 20)
        item.update_item
        item.update_item
        expect(item.quality).to eq 14
    end
end