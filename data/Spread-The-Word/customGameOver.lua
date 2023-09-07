function onCreate()
	addCharacterToList('darwin-death', 'boyfriend');
	addCharacterToList('bf-dead-finn', 'boyfriend');

	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'darwin-death')
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'glitchhit');
end

function onUpdate(elapsed)

	if curStep == 2286 then
		setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf-dead-finn')
		setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'bffinndeath');
	end
end