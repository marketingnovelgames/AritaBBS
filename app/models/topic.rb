class Topic < ApplicationRecord
    has_many :comments
    has_rich_text :content
end
