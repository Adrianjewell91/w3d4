class Poll < ApplicationRecord
  validates :poll_id, presence: true, uniqueness: true
  
  belongs_to :author,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  has_many :questions,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :question_id
end
