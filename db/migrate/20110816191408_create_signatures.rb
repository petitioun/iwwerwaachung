class CreateSignatures < ActiveRecord::Migration
  def self.up
    create_table :signatures do |t|
      t.string :lastname
      t.string :firstname
      t.string :city
      t.text :comment
      t.boolean :anonymous

      t.timestamps
    end
  end

  def self.down
    drop_table :signatures
  end
end
