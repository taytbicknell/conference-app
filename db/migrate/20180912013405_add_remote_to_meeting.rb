class AddRemoteToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :remote, :boolean, null: false, default: false
  end
end
