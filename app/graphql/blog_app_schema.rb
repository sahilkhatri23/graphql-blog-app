# frozen_string_literal: true

class BlogAppSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
