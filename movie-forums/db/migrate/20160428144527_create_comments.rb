class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :movie, index: true
      t.references :user, index: true
      t.string :user
      t.text :comment
      t.datetime :date
      t.timestamps null: false
    end
  end
end
