function onEvent(name, value1, value2)
	if name == "ScreenRotCam" then
		if value2 == nil then
			value2 = 0.005
		end
		doTweenAngle('turn', 'camGame', value1, value2, 'circOut')
		
		if value1 == '-180' or value1 == '180' or value1 == '-200' or value1 == '-160' then

		else
			doTweenAngle('turn2', 'camHUD', value1, value2, 'circOut')
		end
	end
end