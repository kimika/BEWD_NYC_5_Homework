class CreateConstitutions < ActiveRecord::Migration
  def change
    create_table :constitutions do |t|
      t.text, :article
      t.text, :act
      t.text :subject

      t.timestamps
    end
  end
end
