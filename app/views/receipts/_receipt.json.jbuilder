json.extract! receipt, :id, :receipt_creation_date, :receipt_informed_gross_amount, :receipt_total_discount_amount, :receipt_sii_status, :user_id, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
