class Message < ApplicationRecord
  belongs_to :recipient, class_name: "User", inverse_of: :received_messages
  belongs_to :sender, class_name: "User", inverse_of: :sent_messages

  def messages
    Message.where("sender_id = ? OR recipient_id = ?", self.id, self.id)
  end
end
