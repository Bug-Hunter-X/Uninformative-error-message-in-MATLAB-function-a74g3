function result = myFunction(input)
  % Improved error handling with context
  if input < 0
    error('myFunction:NegativeInput', 'Input value (%d) must be non-negative.', input);
  end
  result = input * 2;
end

% Example usage
input_value = -5;
try
  result = myFunction(input_value);
catch exception
  fprintf('Error: %s\n', exception.message);
  %Additional debugging information might be included here
  % e.g.,  fprintf('Stack trace:\n');
  %       disp(exception.stack);
  rethrow(exception); %Rethrow if needed
end