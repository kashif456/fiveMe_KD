class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :build_default_profile
  has_many :tags, through: :profile
  has_one :profile
  accepts_nested_attributes_for :profile, :tags


  private
  def build_default_profile
  	build_profile
  	true # return true in callbacks as the normal 'continue' state
  	# assumes that default_profile can always be created
  end
end
