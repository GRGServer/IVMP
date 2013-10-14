function str_replace(string, search, replacement)
{
	local expression = regexp(search);

	local result = "";
	local position = 0;

	local captures = expression.capture(string);

	while (captures != null)
	{
		foreach (index, capture in captures)
		{
			result += string.slice(position, capture.begin);
			result += replacement;
			position = capture.end;
		}
		captures = expression.capture(string, position);
	}

	result += string.slice(position);

	return result;
}