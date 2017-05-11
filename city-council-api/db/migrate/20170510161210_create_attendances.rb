class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :meeting_id
      t.integer :member_id
      t.boolean :attended

      t.timestamps null: false
    end
  end
end
