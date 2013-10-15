class CreateAuthors < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :integer
    create_table :authors do |t|
      t.string :a_name

      t.timestamps
    end
  end
end
