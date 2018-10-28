class CreateJoinTableUsersWorks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :works, column_options: {type: :uuid} do |t|
      t.index [:work_id, :user_id]
    end
  end
end
