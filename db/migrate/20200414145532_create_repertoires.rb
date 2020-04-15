class CreateRepertoires < ActiveRecord::Migration[5.2]
  def change
    create_table :repertoires do |t|
      t.string :title
      t.string :composer
      t.string :role
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
