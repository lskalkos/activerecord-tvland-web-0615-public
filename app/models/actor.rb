class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    result = nil

    self.characters.each do |character|
      result = "#{character.name} - #{character.show.name}"
    end

    result
  end
end