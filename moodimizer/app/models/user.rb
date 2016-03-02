class User < ActiveRecord::Base
  has_secure_password
  has_many :events, dependent: :destroy
  accepts_nested_attributes_for :events  
end
