xml.div do
xml.p "Who bought #{@product.title}"

   @product.orders.each do |order|
      xml.div do

         xml.p "Name: #{order.name}"
         xml.p order.updated_at
         xml.p "Shipped to #{order.address}"

         xml.table do
            xml.tr do
               xml.th 'Product'
               xml.th 'Quantity'
               xml.th 'Total Price'
            end
 
      order.line_items.each do |item|
            xml.tr do
               xml.td item.product.title
               xml.td item.quantity
               xml.td number_to_currency item.total_price     
            end
      end

           xml.tr do
              xml.td 'total'
              xml.td number_to_currency order.line_items.map(&:total_price).sum   
           end
         end

 xml.p "Paid by #{order.pay_type}"
      end
   end
end
