class NormalItem < Item
    def update_item
        @sell_in -= 1
        @quality -= 1
    end
end