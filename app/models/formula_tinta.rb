class FormulaTinta < ApplicationRecord
  belongs_to :tinta, inverse_of: :formula_tintas 
end
