class CreateRsvps < ActiveRecord::Migration[6.1]
  def change
    create_table :rsvps do |t|
      t.belongs_to :user, class_name: "User", foreign_key: "user_id"
      t.belongs_to :event

      t.timestamps
    end
  end
end
