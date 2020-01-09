class CashRegister

    attr_reader  :discount
    attr_accessor :total, :price, :title, :items
    

    def initialize (discount=0.00)
        @total = 0
        @discount = discount
        @items = []
        @items2 = []
    end


    def add_item(title, price, quantity = 1)
         @price = price
         @title = title
         @quantity = quantity
         @total += (@price * @quantity) 
         @items2 << self.price

         quantity.times do 
            @items << self.title
         end
         
     end


     def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total -= @discount *10
            "After the discount, the total comes to $#{@total}."
        end
     end

     def void_last_transaction
        if @items.length >= 1 
            @total -= @items2.last * @quantity
        else
            @total = 0
        end
        
     end

     

        
end
