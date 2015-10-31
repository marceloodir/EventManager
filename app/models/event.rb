class Event < ActiveRecord::Base
  belongs_to :criador, class_name: 'Manager'
  has_many :participants, :dependent => :delete_all


  has_attached_file :avatar,
                    :styles => { :small => "100x100>",:medium => "300x300>", :large => "500x500>" },
                    :default_url => "missing.png"
                    
  validates_presence_of :titulo, :descricao
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_size :avatar, :less_than => 1.megabytes

  scope :ativos, ->{ where('data >= ?', Time.now) }
  scope :expirados, ->{ where('data < ?', Time.now) }
end
