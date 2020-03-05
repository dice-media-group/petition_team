class CreateBallotInititives < ActiveRecord::Migration[6.0]
  def change
    create_table :ballot_inititives do |t|
      t.string :name
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
