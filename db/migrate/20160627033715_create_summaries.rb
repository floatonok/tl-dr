class CreateSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :summaries do |t|
      t.belongs_to :post, foreign_key: true
      t.text :summary

      t.timestamps
    end
  end
end
