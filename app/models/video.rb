# frozen_string_literal: true

class Video < ApplicationRecord
  belongs_to :user

  validates :title, uniqueness: true
end
