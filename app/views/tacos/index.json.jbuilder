json.array!(@tacos) do |taco|
  json.extract! taco, :id, :name, :description
  json.url taco_url(taco, format: :json)
end
