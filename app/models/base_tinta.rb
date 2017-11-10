class BaseTinta < ApplicationRecord
    has_many :formula_tintas , inverse_of: :base_tinta, dependent: :destroy
    accepts_nested_attributes_for :formula_tintas, reject_if: :all_blank, allow_destroy: true
end
