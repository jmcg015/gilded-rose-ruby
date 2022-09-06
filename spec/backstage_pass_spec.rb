describe BackstagePass do
    it "returns item info as a string" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 20, 40)
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, 20, 40"
    end

    xit "increases quality by 1 if sell_in above 10" do
    end

    xit "increases quality by 2 if sell_in above 5 and 10 or less" do
    end

    xit "increases quality by 3 if sell_in is below 5" do
    end

    xit "drops quality to 0 if sell_in is 0" do
    end
end