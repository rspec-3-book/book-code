# validate me

require 'json'

json_data = '{ "expense_id": 42 }'
ruby_data = JSON.parse(json_data)
# => {"expense_id"=>42}

ruby_data.to_s # to avoid unused variable warning
