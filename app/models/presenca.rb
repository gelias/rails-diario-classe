class Presenca < ActiveRecord::Base
  belongs_to :estudante
  belongs_to :disciplina
end
