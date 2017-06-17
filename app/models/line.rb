class Line < ApplicationRecord
  TRANSPORATATIONS = ["bus", "train", "ship", "plane"]
  # validates_inclusion_of :transportations, in: TRANSPORATATIONS
end
