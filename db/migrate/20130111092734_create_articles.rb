class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.datetime :datetime

      t.timestamps
    end
  end
end
