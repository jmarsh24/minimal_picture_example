class CreateUtmParameters < ActiveRecord::Migration[7.2]
  def change
    create_table :utm_parameters do |t|
      t.references :medium, null: false, foreign_key: true
      t.string :utm_source
      t.string :utm_campaign
      t.string :utm_medium

      t.timestamps
    end
  end
end
