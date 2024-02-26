class Student < ApplicationRecord

  has_and_belongs_to_many :subjects

  def self.ransackable_associations(auth_object = nil)
    ["subjects"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["active", "age", "created_at", "first_name", "id", "last_name", "updated_at", "subjects_name"]
  end
end
