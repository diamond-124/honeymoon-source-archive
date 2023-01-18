function onEvent(name, value1, value2)
	if name == 'Lua Animation' then
		objectPlayAnimation(value1, value2);
	end
end