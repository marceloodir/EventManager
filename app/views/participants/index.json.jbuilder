json.array!(@participants) do |participant|
  json.extract! participant, :id, :nome, :email, :telefone, :event_id
  json.url participant_url(participant, format: :json)
end
