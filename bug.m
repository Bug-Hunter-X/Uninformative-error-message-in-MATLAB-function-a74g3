function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = input * 2; %Example operation
end

% Example of how the error can occur
input_value = -5;
result = myFunction(input_value);