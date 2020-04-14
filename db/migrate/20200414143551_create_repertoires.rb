class CreateRepertoires < ActiveRecord::Migration[5.2]
  def change
    create_table :repertoires do |t|

      t.string :title

      t.timestamps
    end
  end
end
