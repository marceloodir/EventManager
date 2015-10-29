json.array!(@participants) do |participant|
  json.extract! participant, :id, :nome, :email, :telefone, :evento_id
  json.url participant_url(participant, format: :json)
end
