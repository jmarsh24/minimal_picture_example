class Medium < ApplicationRecord
  has_one :utm_parameter, dependent: :destroy
end
