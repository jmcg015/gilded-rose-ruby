class Conjured < Item
    def update_item
        @quality -= @sell_in.positive? ? 2 : 4
        @sell_in -= 1
    end
end