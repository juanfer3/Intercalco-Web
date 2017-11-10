class Malla < ApplicationRecord
    has_many :tintas , inverse_of: :malla, dependent: :destroy
    accepts_nested_attributes_for :tintas, reject_if: :all_blank, allow_destroy: true
end
