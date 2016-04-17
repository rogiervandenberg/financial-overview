json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :account, :transaction_date, :amount, :description, :category_id, :account_id
  json.url transaction_url(transaction, format: :json)
end
