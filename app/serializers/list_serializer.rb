class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :items
  # belongs_to :user, record_type: :user
  # has_many :items
end
