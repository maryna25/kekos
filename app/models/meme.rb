class Meme < ApplicationRecord
  validates :title, presence: true

  def as_json(options = {})
    super({ only: [:id, :title] }.merge(options))
  end
end
