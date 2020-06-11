class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :is_complete
  # belongs_to :list, record_type: :list
end
