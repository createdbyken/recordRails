# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  title      :string
#  code       :string
#  price      :integer          default(0)
#  stock      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord

    #save
    before_save :validate_product
    after_save :send_notification

    def total
        self.price / 100
    end

    def validate_product
        puts "\n\n\n>>> ¡Un nuevo producto será añadido a almacen!"
    end

    def send_notification
        puts "\n\n\n>>> Un nuevo producto fue añadido ha almacén: #{self.title} - $#{self.total} USD"
    end



end
