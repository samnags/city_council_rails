class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :date
      t.string :in_session

      t.timestamps null: false
    end
  end
end
