class AgedBrie < Item
    def update_item
        if @quality < 50 && sell_in > 0
            @quality += 1
        end
        @sell_in -= 1
    end
end