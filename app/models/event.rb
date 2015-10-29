class Event < ActiveRecord::Base
  belongs_to :criador, class_name: 'Manager'
  has_many :participants

  validates_presence_of :titulo, :descricao
end
