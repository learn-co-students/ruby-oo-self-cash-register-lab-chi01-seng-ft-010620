class CashRegister
    attr_accessor :total, :discounted_total, :items, :item
    attr_reader :price, :discount 

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items_list = []
    end 

    def add_item(item, price, quantity = nil)
        if quantity
            @quantity = quantity  
            quantity.times do 
            @items_list.push(item)
            end
        else 
            @items_list.push(item)
        end  
        @price = price 
        if quantity
            @total += price * quantity
        else 
            @total += price
        end 
    end 

    def apply_discount
        if @discount
            @total -= (@total*(0.2)).round
            "After the discount, the total comes to $#{@total}."
        else 
            @total
            "There is no discount to apply."
        end 
    end 

    def items
        @items_list
    end 

    def void_last_transaction
        if @quantity
            @total -= (self.price * @quantity)
        else
            @total -= self.price
        end 
    end 

end


