module Types
  module Input
    class PostInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :description, String, required: true
    end
  end
end
