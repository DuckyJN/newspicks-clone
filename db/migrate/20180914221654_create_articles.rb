class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :site
      t.string :title
      t.text :body
      t.text :image
      t.text :link
      t.datetime :published_at

      t.timestamps
    end
  end
end
