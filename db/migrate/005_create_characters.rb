class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :show, index: true
      t.string :name
    end
  end
end