class AgedBrie < Item
    def update_item
        unless @quality >= 50
            @quality += @sell_in.positive? ? 1 : 2
        end
        @sell_in -= 1
    end
end