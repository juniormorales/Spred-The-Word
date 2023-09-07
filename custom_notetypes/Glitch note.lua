local Chromacrap = 0;

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function setChrome(chromeOffset)
    setShaderFloat("temporaryShader", "rOffset", chromeOffset);
    setShaderFloat("temporaryShader", "gOffset", 0.0);
    setShaderFloat("temporaryShader", "bOffset", chromeOffset * -1);
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Glitch note' then
    Chromacrap = Chromacrap + 0.01; -- edit this
	triggerEvent('Screen Shake', '0.1,0.002', '0,0')
end
end

function onCreatePost()
    --luaDebugMode = true;
	if (shadersEnabled) then
		initLuaShader("vcr");
		
		makeLuaSprite("temporaryShader");
		makeGraphic("temporaryShader", screenWidth, screenHeight);
		
		setSpriteShader("temporaryShader", "vcr");
		
		addHaxeLibrary("ShaderFilter", "openfl.filters");
		runHaxeCode([[
			trace(ShaderFilter);
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
		]]);
	end
end

function onUpdate(elapsed)
	if (shadersEnabled) then
		Chromacrap = math.lerp(Chromacrap, 0, boundTo(elapsed *10,0, 30));
		setChrome(Chromacrap);
	end
end
function onBeatHit()
if curBeat % 4 == 0 then
	Chromacrap = Chromacrap + 0.008;
	triggerEvent('Add Camera Zoom', '0.02', '0.02')
	end
	end