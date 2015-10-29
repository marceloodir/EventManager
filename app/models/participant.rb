class Participant < ActiveRecord::Base
  belongs_to :evento, class_name: 'Event'

  validates_presence_of :nome, :email
  validates :email, uniqueness: { scope: :evento, message: "já cadastrado para esse evento." }
end
