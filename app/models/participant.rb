class Participant < ActiveRecord::Base
  belongs_to :evento, class_name: 'Event'

  validates_presence_of :nome, :email
end
