class AddCommentToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :comments, :text
  end
end
