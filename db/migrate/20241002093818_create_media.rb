class CreateMedia < ActiveRecord::Migration[7.2]
  def change
    create_table :media do |t|
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
