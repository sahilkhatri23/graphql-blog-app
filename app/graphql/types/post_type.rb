module Types
  class PostType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :content, String, null: false
    field :comments, CommentType.connection_type, null: true
    field :user, UserType, null: false
  end
end
