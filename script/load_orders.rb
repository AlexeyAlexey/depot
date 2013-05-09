Order.transaction do
   (1..10).each do |i|
      Order.create(:name => "Customer #{1}", 
                   :address => "#{i} Main Street", 
                   :email => "customer-#{i}@example.com", 
                   :pay_type => "Check" )
   end

end
