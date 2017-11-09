class Tinta < ApplicationRecord
  
  belongs_to :linea_uv 
  belongs_to :malla 
  belongs_to :producto
  
  has_many :formula_tintas , inverse_of: :tinta, dependent: :destroy
  accepts_nested_attributes_for :formula_tintas, reject_if: :all_blank, allow_destroy: true
  
  #Para el select
  def self.num_mallas
    num_mallas
  end  
  

  
end