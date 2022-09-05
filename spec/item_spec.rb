describe Item do
  it "returns the item name" do
    item = Item.new("Mithril vest", 10, 50)
    expect(item.to_s).to eq "Mithril vest, 10, 50"
  end
end
