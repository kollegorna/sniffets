json.array!(@snippets) do |snippet|
  json.extract! snippet, :name, :snippet, :status
  json.url snippet_url(snippet, format: :json)
end
