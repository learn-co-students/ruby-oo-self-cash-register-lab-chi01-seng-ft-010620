class CashRegister
attr_accessor :discount, :total  
attr_reader :items

    def initialize(dcount = 0.0)
        @total = 0
        @discount = dcount
        @items =[]
    end

    def add_item(title, price, quantity = 1)
    @last_total = @total
        @total += price*quantity
    quantity.times do @items.push(title)
     end
    end  

    def apply_discount
        if @discount === 0.0
            "There is no discount to apply."
        else     
        @total =  @total - @total*@discount/100
        "After the discount, the total comes to $#{@total}."
        end
    end
    def void_last_transaction
        @total = @last_total
    end
end