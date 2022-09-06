describe BackstagePass do
    it "returns item info as a string" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 20, 40)
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, 20, 40"
    end

    it "increases quality by 1 if sell_in above 10" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 20, 40)
        item.update_item
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, 19, 41"
    end

    it "increases quality by 2 if sell_in above 5 and 10 or less" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 7, 30)
        item.update_item
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, 6, 32"
    end

    it "increases quality by 3 if sell_in is below 5" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 4, 30)
        item.update_item
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, 3, 33"
    end

    it "drops quality to 0 if sell_in is 0" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 0, 30)
        item.update_item
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, -1, 0"
    end
end