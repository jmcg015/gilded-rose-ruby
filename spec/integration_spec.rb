describe GildedRose do
    it "decreases item quality by 1" do
        glass_of_milk = Item.new("Glass of Milk", 5, 10)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].quality).to eq 9
    end
end