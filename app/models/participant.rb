class Participant < ActiveRecord::Base
  belongs_to :event, class_name: 'Event'

  validates_presence_of :nome, :email
  validates :email, uniqueness: {
                                  scope: :event,
                                  message: "já cadastrado para esse evento."
                                }
end
