# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :login, mutation: Mutations::Login, null: false
    field :createPost, mutation: Mutations::CreatePost
  end
end
