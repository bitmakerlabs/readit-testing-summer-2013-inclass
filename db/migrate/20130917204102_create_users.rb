class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.timestamps
    end
    change_table :posts do |t|
      t.belongs_to :user
    end
  end
end
