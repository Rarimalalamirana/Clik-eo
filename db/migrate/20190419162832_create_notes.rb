class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text :description
      t.belongs_to :user, index: true
      t.belongs_to :task, index: true
      t.timestamps
    end
  end
end
