print('Loaded Shared/test.lua')
return function(from) print('Called Shared/test.lua\'s contents from ' .. from) end
