class BackstagePass < Item
    def update_item
        if @sell_in > 5 && @sell_in <= 10
            @quality += 2
        elsif @sell_in < 5 && @sell_in > 0
            @quality += 3
        elsif @sell_in == 0
            @quality = 0
            @sell_in = 0
        else
            @quality += 1
        end
        @sell_in -= 1
    end
end