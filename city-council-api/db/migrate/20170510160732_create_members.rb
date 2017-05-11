class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string    :first_name
      t.string    :last_name
      t.integer   :district
      t.string    :party
      t.datetime  :first_day
      t.datetime  :last_day, default: nil 
      t.boolean   :in_office

      t.timestamps null: false
    end
  end
end
