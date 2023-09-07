function onEvent(name, value1, value2)
	if name == 'arrowswap' and value1 == 'a' then


			noteTweenX('dad', 0, defaultOpponentStrumX0, value2, linear)
			noteTweenX('dad1', 1, defaultOpponentStrumX1, value2, linear)
			noteTweenX('dad2', 2, defaultOpponentStrumX2, value2, linear)
			noteTweenX('dad3', 3, defaultOpponentStrumX3, value2, linear)
		
			noteTweenX('bf4', 4, defaultPlayerStrumX0, value2, linear)
			noteTweenX('bf5', 5, defaultPlayerStrumX1, value2, linear)
			noteTweenX('bf6', 6, defaultPlayerStrumX2, value2, linear)
			noteTweenX('bf7', 7, defaultPlayerStrumX3, value2, linear)

	end
	if name == 'arrowswap' and value1 == 'b' then

		

			noteTweenX('bf', 4, defaultOpponentStrumX0, value2, linear)
			noteTweenX('bf1', 5, defaultOpponentStrumX1, value2, linear)
			noteTweenX('bf2', 6, defaultOpponentStrumX2, value2, linear)
			noteTweenX('bf3', 7, defaultOpponentStrumX3, value2, linear)

			noteTweenX('dad4', 0, defaultPlayerStrumX0, value2, linear)
			noteTweenX('dad5', 1, defaultPlayerStrumX1, value2, linear)
			noteTweenX('dad6', 2, defaultPlayerStrumX2, value2, linear)
			noteTweenX('dad7', 3, defaultPlayerStrumX3, value2, linear)

	end
end