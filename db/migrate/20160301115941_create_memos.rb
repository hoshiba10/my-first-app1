class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :word
      t.datetime :times

      t.timestamps null: false
    end
  end
end
