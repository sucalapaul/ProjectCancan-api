class CreateCercs < ActiveRecord::Migration
  def change
    create_table :cercs do |t|
      t.string :name

      t.timestamps
    end
  end
end
