class AddUserRefToSummary < ActiveRecord::Migration[5.0]
  def change
    add_reference :summaries, :user, foreign_key: true
  end
end
