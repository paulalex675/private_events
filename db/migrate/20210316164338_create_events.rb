class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.time :time
      t.belongs_to :user, class_name: "User", foreign_key: "user_id"

      t.timestamps
    end
  end
end
