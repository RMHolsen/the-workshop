class CreateGuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :guilds do |t|
      t.string :name
      t.string :purpose
      t.integer :membership
    end
  end
end
