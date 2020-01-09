class CashRegister
    attr_accessor :discount, :total, :items, :last_item_price

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_item_price = 0
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            self.items.push(title)
        end

        self.total += price * quantity 
        self.last_item_price = price * quantity

    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = self.total - (self.total * self.discount/100)
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def void_last_transaction
        #self.items.pop
        self.total -= last_item_price
    end
end
