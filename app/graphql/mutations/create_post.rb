module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true
    argument :content, String, required: true

    field :post, Types::PostType, null: false

    def resolve(title:, content:)
      if context[:current_user]
        post = Post.create!(title: title, content: content, user: context[:current_user])
        { post: post }
      else
        raise GraphQL::ExecutionError, "Unauthorized"
      end
    end
  end
end
