class NormalItem < Item
    def update_item
        if @sell_in == 0
            @quality -= 2
        else
            @sell_in -= 1
            @quality -= 1
        end
    end
end