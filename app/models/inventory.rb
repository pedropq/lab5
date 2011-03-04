class Inventory < ActiveRecord::Base
   before_create {:previous_balance = 0, :new_balance = product.amount,
   :future_balance = product.amount + product.projection,  product.amount = 0 }
   before_update {:previous_balance = new_balance, :new_balance =  
   product.amount, :future_balance = product.amount + product.projection }
end
