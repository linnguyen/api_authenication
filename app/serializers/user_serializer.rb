class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts
  #link(:self) { user_url(object) }
end
