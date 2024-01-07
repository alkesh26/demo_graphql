module Types
  module Input
    class CommentInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :content, String
    end
  end
end
