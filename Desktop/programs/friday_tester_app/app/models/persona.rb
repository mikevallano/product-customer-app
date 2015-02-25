class Persona < ActiveRecord::Base
  validates :personaname, presence: true
  validates :age, presence: true
  validates :description, presence: true
end
