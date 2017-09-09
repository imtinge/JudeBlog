class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :category, optional: true

  rails_admin do
    parent Category
    show do
      field :title
      field :content
      field :category
    end
    edit do
      field :title
      field :content, :ck_editor
      field :category
    end
  end

end
