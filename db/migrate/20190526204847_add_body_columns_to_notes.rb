class AddBodyColumnsToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :body, :text
  end
end
