class Customer < ApplicationRecord
  has_one_attached :avatar

  attr_accessor :name
  attr_accessor :email_address

  validates :name, presence: true
  validates :email_address, presence: true, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["avatar_attachment", "avatar_blob"]
  end



end
