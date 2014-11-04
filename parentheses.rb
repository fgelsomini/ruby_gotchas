def foo(options={})
  return true
end

# The following code becomes ambiguous in Ruby since we are able to pass blocks
# to methods implicitly, regardless of whether a yield exists within the method.
# The method foo will assume this is an attempt at passing a block into the method
# and fail:

foo { :test => "test" }

# This call is actually passing a block and it will not fail:

foo { puts "Hello" }

# This is a very good example of why we should always use parentheses for method invocation!

