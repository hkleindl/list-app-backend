class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :content
      t.boolean :is_complete

      t.timestamps
    end
  end
end
