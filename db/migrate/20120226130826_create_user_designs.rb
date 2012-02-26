class CreateUserDesigns < ActiveRecord::Migration
  def change
    create_table :user_designs do |t|
      t.integer :user_id
      t.integer :invitation_designs_id
      t.integer :event_id
      t.timestamps
    end
  end
end
