class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :location, :image, :send, :created_at, :updated_at, :user_id, :category_id, :user, :category
end
