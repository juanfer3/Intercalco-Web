class FormulaTinta < ApplicationRecord
  
  belongs_to :tinta, optional: true
  belongs_to :base_tinta
  
end
