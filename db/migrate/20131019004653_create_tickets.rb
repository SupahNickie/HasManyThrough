class CreateTickets < ActiveRecord::Migration
  def change
    create_table :cops do |t|
      t.string :name
      t.timestamps
    end

    create_table :victims do |t|
      t.string :name
      t.timestamps
    end

    create_table :tickets do |t|
      t.belongs_to :cop
      t.belongs_to :victim
      t.string :violation
      t.timestamps
    end
  end
end
