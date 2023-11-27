class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  def str_complete_name
    self.first_name + " " + self.second_name + " " + self.first_surname
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
