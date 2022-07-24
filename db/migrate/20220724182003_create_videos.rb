# frozen_string_literal: true

class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos, id: :uuid do |t|
      t.string :title, null: false, index: { unique: true }
      t.string :url
      t.belongs_to :user, type: :uuid, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
end
