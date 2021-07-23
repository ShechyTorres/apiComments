class Comment < ApplicationRecord
    validates :name, :email, :body, presence: true
    validates :email, uniqueness: true
    validates :name, length: { minimum: 3 }
    validates :body, length: { minimum: 6 }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    
end
