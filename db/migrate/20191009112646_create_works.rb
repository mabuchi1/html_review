class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text      :url, unique: true
      t.string    :name, unique: true
      t.timestamps
    end
  end
end
