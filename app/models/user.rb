class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :name, length: {maximum: 10}
  validates :name, presence: true
  validates_uniqueness_of :name
  #validates :email, presence: true
  #validates_uniqueness_of :email, case_sensitive: true

  acts_as_messageable

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end


end
