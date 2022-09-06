class GildedRose

  def initialize()
    @items = []
  end

  def items
    @items
  end

  def add_item(item)
    raise "#{item.name}'s quality cannot be more than 50" if item.quality > 50
    raise "#{item.name}'s quality cannot be be 0 or less" if item.quality <= 0
    @items << item
  end

  def update_quality()
    @items.each do |item|
      item.update_item
    end
  end
end
