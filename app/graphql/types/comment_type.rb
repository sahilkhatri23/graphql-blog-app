# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :post, [ PostType ], null: true
    field :user, [ UserType ], null: true
  end
end
