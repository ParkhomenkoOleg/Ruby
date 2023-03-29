my_lambda = lambda { puts "hello" }

#varieties of lambda calls
my_lambda.call
my_lambda.()
my_lambda.[]
my_lambda.===

my_lambda_with_args = -> (v) { puts "hello "+v }
my_lambda_with_args.call('Oleh')