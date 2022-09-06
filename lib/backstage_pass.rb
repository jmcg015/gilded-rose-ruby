class BackstagePass < Item
    def update_item
        @quality += 1
        @sell_in -= 1
    end
end