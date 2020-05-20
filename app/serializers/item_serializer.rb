class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :is_completed
  belongs_to :list, record_type: :list
end