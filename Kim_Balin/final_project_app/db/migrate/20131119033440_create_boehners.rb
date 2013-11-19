class CreateBoehners < ActiveRecord::Migration
  def change
    create_table :boehners do |t|
      t.text, :result_quote
      t.text, :subject_quote
      t.integer :year

      t.timestamps
    end
  end
end
