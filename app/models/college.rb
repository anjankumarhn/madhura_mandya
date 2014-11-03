class College < ActiveRecord::Base
  belongs_to :thaluk

  validates :name,
  :presence => true

  validates :address,
  :presence => true

  validates :email,
  uniqueness: {message: "email already exists"}
end
