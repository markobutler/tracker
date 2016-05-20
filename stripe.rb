require "stripe"
Stripe.api_key = "sk_test_O3z9wfYodQd07I3sG6iZagyJ"

curl https://api.stripe.com/v1/charges?limit=50 \
   -u sk_test_O3z9wfYodQd07I3sG6iZagyJ: