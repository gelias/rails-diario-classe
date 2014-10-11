json.array!(@presencas) do |presenca|
  json.extract! presenca, :id, :estudante_id, :disciplina_id
  json.url presenca_url(presenca, format: :json)
end
