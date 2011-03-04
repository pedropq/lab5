class Products < ActiveRecord::Base
   validates_presence_of :title, :description, :price,  :image_url 
   validates_uniqueness_of :title
   validates_numericality_of :price, :greater_than_or_equal => 0.1
   validates_format_of :image_url , :with => %r{\.(gif|jpg|png)$}i
   validates_numericality_of :projection, :greater_than => 0
end
