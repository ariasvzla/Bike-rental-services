Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_4UeJAtZWyro5q5SwFl2myQp5'],
  :secret_key      => ENV['sk_test_4UeJTSBCyqEyWCvVZubd3m0J']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]