class CreatePresencas < ActiveRecord::Migration
  def change
    create_table :presencas do |t|
      t.references :estudante, index: true
      t.references :disciplina, index: true

      t.timestamps
    end
  end
end
