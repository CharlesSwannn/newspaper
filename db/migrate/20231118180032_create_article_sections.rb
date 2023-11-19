class CreateArticleSections < ActiveRecord::Migration[7.0]
  def change
    create_table :article_sections do |t|
      t.references :section, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
