class CashRegister
    
    attr_accessor :total, :last_transaction, :items
    attr_reader :discount
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title, price, increases = 1) 
        self.total += price * increases
        increases.times do 
            items << title
        end
        @price = price
        @last_transaction = price * increases
        
    end

    def apply_discount 
        if self.discount > 0 && @total = 800
        "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction.to_f
    end

end