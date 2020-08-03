class CreateMountains < ActiveRecord::Migration[6.0]
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :elevation
      t.belongs_to :user
      t.timestamps
    end
  end
end
