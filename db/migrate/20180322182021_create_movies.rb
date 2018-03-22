class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.text :desc
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
