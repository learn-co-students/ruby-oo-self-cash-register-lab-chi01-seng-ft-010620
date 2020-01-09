class CashRegister

    attr_accessor :total, :discount, :last_item
    attr_reader :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do @items << title
        end
        self.last_item = quantity * price
    end
    
    def apply_discount
        if @discount > 0 
            @total = @total - (@discount/100.to_f) * @total
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_item
    end

end
