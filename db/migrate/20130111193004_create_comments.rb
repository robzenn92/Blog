class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.datetime :datetime

      t.timestamps
    end
  end
end
