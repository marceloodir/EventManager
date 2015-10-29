class RenameEventoIdFromParticipants < ActiveRecord::Migration
  def change
    rename_column :participants, :evento_id, :event_id
  end
end
