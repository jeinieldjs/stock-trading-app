class Portfolio < ApplicationRecord
  belongs_to :user



  validates_presence_of :stock, :shares
end
