class ChangeUserRefInComments < ActiveRecord::Migration[7.2]
  def change
    change_column_null :comments, :user_id, true
  end
end
