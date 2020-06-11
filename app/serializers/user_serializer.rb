class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :lists
  # has_many :lists
end
