class CreateWidgets < ActiveRecord::Migration[5.2]
  def change
    create_table :widgets do |t|
      t.string :name
      t.string :url
      t.text :injected_content

      t.timestamps
    end
  end
end
