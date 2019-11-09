class User < ApplicationRecord
    validates :firstName, presence: true
    validates :lastName, presence:true
    validates :address, presence: true
    validates :userName, presence: { message: "Username cannot be left blank..." }, length: { minimum: 2, too_short: "userName too short. Minimum length = %{count}" }
    validates :password, presence: { message: "Password cannot be left blank..." }, confirmation: true, length: { minimum: 6 , too_short: "Password too short. Minimum length = %{count}"}

end
