module Mutations
  class CreatePost < Mutations::BaseMutation
    argument :params, Types::Input::PostInputType, required: true

    field :post, Types::PostType, null: false

    def resolve(params:)
      post_params = Hash params

      { post: Post.create!(post_params) }
    end
  end
end
