json.array!(@estudantes) do |estudante|
  json.extract! estudante, :id, :nome
  json.url estudante_url(estudante, format: :json)
end
