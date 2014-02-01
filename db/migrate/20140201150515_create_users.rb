class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :question

      t.timestamps
    end
  end
end
