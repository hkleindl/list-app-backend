class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  belongs_to :user, record_type: :user
  has_many :items
end
