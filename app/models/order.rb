class Order < ActiveRecord::Base
  attr_accessible : email, :address, :name, :pay_type
end
