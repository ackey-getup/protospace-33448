class RenameTextToComments < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :text, :comment
  end
end
