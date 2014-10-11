class CreateEstudantes < ActiveRecord::Migration
  def change
    create_table :estudantes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
