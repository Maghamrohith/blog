class CreateAuothers < ActiveRecord::Migration
  def change
    create_table :auothers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
