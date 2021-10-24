module NewsHistoriesHelper
    def price_comment(price)
        if price > 10000
            "#{price} (高額)"
        end
    end
end
