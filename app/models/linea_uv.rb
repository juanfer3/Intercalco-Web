class LineaUv < ApplicationRecord
    has_many :tintas , inverse_of: :linea_uv, dependent: :destroy
   accepts_nested_attributes_for :tintas, reject_if: :all_blank, allow_destroy: true
end
