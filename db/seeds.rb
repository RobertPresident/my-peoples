User.create!([
  {email: "mike@gmail.com", encrypted_password: "$2a$11$biSIrx8277R6yO5.SVfcSuqqq7SfiX1UyIKPo4jFO03pmmFjV1orG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-05-26 16:42:05", last_sign_in_at: "2016-05-26 16:20:03", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Contact.create!([
  {first_name: "Mickey", last_name: "Mouse", phone_number: "310-555-1234", email: "bigears@gmail.com"},
  {first_name: "Minnie", last_name: "Mouse", phone_number: "310-555-1235", email: "bowonear@gmail.com"},
  {first_name: "Goofy", last_name: "Goof", phone_number: "310-555-1236", email: "bigfeet@gmail.com"},
  {first_name: "Donald", last_name: "Duck", phone_number: "310-555-1237", email: "nopants@gmail.com"},
  {first_name: "Daisy", last_name: "Duck", phone_number: "310-555-1238", email: "webbedstylishtoes@gmail.com"}
])
