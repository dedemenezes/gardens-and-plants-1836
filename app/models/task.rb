class Task < ApplicationRecord
  belongs_to :plant
  belongs_to :chore
end
