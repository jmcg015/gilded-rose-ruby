describe GildedRose do
    it "decreases normal item quality by 1" do
        glass_of_milk = NormalItem.new("Glass of Milk", 5, 10)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].quality).to eq 9
    end

    it "Lowers the quality of multiple normal items by 1" do 
        glass_of_milk = NormalItem.new("Glass of Milk", 5, 10)
        sandwich = NormalItem.new("Sandwich", 5, 20)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.add_item(sandwich)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].quality).to eq 9
        expect(gilded_rose.items[1].quality).to eq 19
    end

    it "decreases the sell_in by 1 on normal items" do
        glass_of_milk = NormalItem.new("Glass of Milk", 5, 10)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].sell_in).to eq 4
    end

    it "decreases the sell_in by 1 on multiple normal items" do
        glass_of_milk = NormalItem.new("Glass of Milk", 5, 10)
        sandwich = NormalItem.new("Sandwich", 6, 20)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.add_item(sandwich)
        gilded_rose.update_quality()
        expect(gilded_rose.items[0].sell_in).to eq 4
        expect(gilded_rose.items[1].sell_in).to eq 5
    end

    it "reduces the quality by 2 after reaching the sell_in date" do
        glass_of_milk = NormalItem.new("Glass of Milk", 1, 10)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(glass_of_milk)
        gilded_rose.update_quality
        gilded_rose.update_quality
        expect(gilded_rose.items[0].quality).to eq 7
    end

    it "throws error if normal item being added has quality above 50" do
        good_milk = NormalItem.new("Good milk", 10, 60)
        gilded_rose = GildedRose.new
        expect { gilded_rose.add_item(good_milk) }.to raise_error "Good milk's quality cannot be more than 50"
    end

    it "throws error if normal item being added has quality <=0" do
        bad_milk = NormalItem.new("Bad milk", 10, -1)
        gilded_rose = GildedRose.new
        expect { gilded_rose.add_item(bad_milk) }.to raise_error "Bad milk's quality cannot be be 0 or less"
    end

    it "increases the quality of aged brie as sell_in decreases" do
        aged_brie = AgedBrie.new("Aged Brie", 10, 40)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(aged_brie)
        gilded_rose.update_quality
        expect(gilded_rose.items[0].quality).to eq 41
        expect(gilded_rose.items[0].sell_in).to eq 9
    end

    it "doesn't decrease item quality of Sulfuras" do
        sulfuras = Sulfuras.new("Sulfuras, Hand of Ragnaros", 10, 50)
        gilded_rose = GildedRose.new
        gilded_rose.add_item(sulfuras)
        gilded_rose.update_quality
        expect(gilded_rose.items[0].quality).to eq 50
    end


    #Item quality can never be below zero
end