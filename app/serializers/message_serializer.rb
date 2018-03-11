class MessageSerializer < ActiveModel::Serializer
  attributes :sender, :recipient, :body
end
