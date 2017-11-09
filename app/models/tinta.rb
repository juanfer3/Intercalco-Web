class Tinta < ApplicationRecord
  belongs_to :linea_uv 
  belongs_to :malla 
  belongs_to :producto
  
  

 
  has_many :formula_tintas , inverse_of: :tinta
  accepts_nested_attributes_for :formula_tintas
end