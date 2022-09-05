describe GildedRose do
    it "decreases normal item quality by 1" do
        glass_of_milk = Item.new("Glass of Milk", 5, 10)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].quality).to eq 9
    end

    it "Lowers the quality of multiple normal items by 1" do 
        glass_of_milk = Item.new("Glass of Milk", 5, 10)
        sandwich = Item.new("Sandwich", 5, 20)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.add_item(sandwich)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].quality).to eq 9
        expect(gilded_rose.items[1].quality).to eq 19
    end

    #Item quality cannot be above 50 for normal items
    #Item quality can never be below zero
    #If sellIn date is below 0, item quality decreases twice as fast
end