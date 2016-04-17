json.array!(@rules) do |rule|
  json.extract! rule, :id, :name, :regexp, :category_id
  json.url rule_url(rule, format: :json)
end
