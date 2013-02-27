class User < Person
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  #devise :database_authenticatable,:registerable  ,
  #       :recoverable, :rememberable, :trackable, :validatable

  devise :registerable


  # Setup accessible (or protected) attributes for your model

  # attr_accessible :title, :body
end
