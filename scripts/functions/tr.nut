function tr(string, playerId, ...)
{
	local language = "en";

	if (playerId != null)
	{
		language = getPlayerData(playerId).language;
	}

	if (language != "en" && language in translationStrings && string in translationStrings[language])
	{
		string = translationStrings[language][string];
	}

	for (local index = 0; index < vargv.len(); index++)
	{
		string = str_replace(string, "@" + (index + 1), vargv[index]);
	}
	return string;
}