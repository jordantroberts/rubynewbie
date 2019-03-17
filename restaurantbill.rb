bill = {tip: 0.1, tax: 0.2, price: 24.99}

def calculate_total(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

puts calculate_total(bill)
