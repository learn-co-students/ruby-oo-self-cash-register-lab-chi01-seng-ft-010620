require  'pry'
class CashRegister
    attr_reader :discount
    attr_accessor :total
    def initialize(discount= 0)
       @discount = discount 
        @total = 0
        @titles = []

    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times  do 
        @titles << title
        end
        @price = price * quantity
    end

    def apply_discount
       if @discount > 0
         @total = (100-@discount.to_f)/100 * @total 

         "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
         end
    end

def items
 @titles
end

def void_last_transaction
    @total -= @price
end

end