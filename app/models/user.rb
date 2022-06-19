class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}$/)
      errors.add :password, "must contain at least a lowercase letter, a uppercase, a digit, a special character and 8+ characters"
    end 
  end
end
