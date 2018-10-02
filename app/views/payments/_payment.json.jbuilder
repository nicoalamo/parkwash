json.extract! payment, :id, :bank, :statement_date, :description, :credit, :commission, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
