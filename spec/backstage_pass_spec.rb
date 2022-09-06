describe BackstagePass do
    it "returns item info as a string" do
        item = BackstagePass.new("Backstage passes to a TAFKAL80ETC concert", 20, 40)
        expect(item.to_s).to eq "Backstage passes to a TAFKAL80ETC concert, 20, 40"
    end
end