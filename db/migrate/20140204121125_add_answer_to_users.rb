class AddAnswerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :answer, :text
  end
end
