describe GildedRose do
  it "lowers the quality by 1 at the end of each day" do
    item = Item.new("Banana", 5, 50)
    rose = GildedRose.new([item])
    rose.update_quality()
    expect(item.to_s()).to eq "Banana, 4, 49"
  end
end
