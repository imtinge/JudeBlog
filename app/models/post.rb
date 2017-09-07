class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :category, optional: true

  rails_admin do
    edit do
      field :title
      field :content, :ck_editor
      field :category
    end
  end
end
