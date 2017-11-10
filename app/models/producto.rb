class Producto < ApplicationRecord
    
    has_many :tintas , inverse_of: :producto, dependent: :destroy
    accepts_nested_attributes_for :tintas, reject_if: :all_blank, allow_destroy: true
    
    def self.nombre
        nombre
    end
    
end
