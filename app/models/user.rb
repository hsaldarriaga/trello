class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tasks
  validates :name, presence: true
  validates :lastname, presence: true
  validates :username, presence: true, uniqueness: true
  validates :user_id, presence: true, uniqueness: true
end
