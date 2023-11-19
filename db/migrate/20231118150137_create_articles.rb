class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :image_url
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
