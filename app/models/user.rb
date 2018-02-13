class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :gossips
  belongs_to :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :content, presence: true

validates :body, presence: true, length: { maximum: 200 }
validates :name, presence: true, length: { maximum: 20 } #validation, username ne peut pas être vide et fais au maximum 20 char
end
