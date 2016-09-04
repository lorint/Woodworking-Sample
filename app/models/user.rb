# Make the model that works with bcrypt:
# rails g model               User email password_digest

# Make the rest that puts in a password to be hashed:
# rails g scaffold_controller User email password

class User < ApplicationRecord
  has_secure_password
end
