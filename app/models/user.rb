class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_one :graduation, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  
  #User가 가입할 때 자동으로 Graduation 만들어주기
  before_create :create_graduation
  
  def create_graduation
    graduation = build_graduation
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
