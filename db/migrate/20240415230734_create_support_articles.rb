class CreateSupportArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :support_articles do |t|
      t.text 'content'
      t.string 'title'
      t.string 'subtitle'
      t.string 'slug'
      t.string 'name'
      t.timestamps
    end
  end
end
