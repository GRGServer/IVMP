function getPlayerData(playerId)
{
	if (!(playerId in playerData))
	{
		playerData[playerId] <- {};
	}

	local template =
	{
		language = "en",
		userId = 0
	};

	foreach (index, defaultValue in template)
	{
		if (!(index in playerData[playerId]))
		{
			playerData[playerId][index] <- defaultValue;
		}
	}

	return playerData[playerId];
}