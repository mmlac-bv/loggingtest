class CreateMysqlmods < ActiveRecord::Migration
  def change
    create_table :mysqlmods do |t|
      t.string :fname
      t.string :lname
      t.integer :number

      t.timestamps
    end
  end
end
