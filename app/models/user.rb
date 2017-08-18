class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :authored_polls,
    class_name: :Poll ,
    primary_key: :id,
    foreign_key: :poll_id

  has_many :responses,
    class_name: :Response,
    primary_key: :id,
    foreign_key: :response_id
end
