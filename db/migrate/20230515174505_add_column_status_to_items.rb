class AddColumnStatusToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :status, :string
  end
end
