require 'pry'

class CashRegister

    attr_accessor :total

    def initialize(employee_discount = 0)
        @total = 0
        @employee_discount = employee_discount
        @item_list = []
        @last_price = []
    end

    def discount
        @employee_discount
    end

    def add_item(title, price, quanitity = 1)
        @total += (price * quanitity)
        quanitity.times do
            @item_list.push(title)
        end
        @last_price[0] = (price * quanitity)
    end

    def apply_discount
        if @employee_discount != 0
            @total *= (1 - (@employee_discount/100.0))
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @item_list
    end

    def void_last_transaction
        @total -= @last_price[0]
    end
end