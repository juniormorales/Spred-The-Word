local floating = false

function onStartCountdown()
  if not allowCountdown then
    runTimer('start', 0);
    allowCountdown = true;
    startCountdown();
    return Function_Stop;
  end
  return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'start' then
    makeLuaSprite('black', 'black', 0, 0);
    setObjectCamera('black', 'hud');
    addLuaSprite('black', true);
    runTimer('fadein', 1, 1);
    runTimer('fadeout', 5, 1);
  elseif tag == 'fadeout' then
    doTweenAlpha('blackfade', 'black', 0, 2, 'linear');
  end
end

function createSchoolGlitchStage()
    makeLuaSprite('schoolGlitchBg','backgrounds/school-glitch/Ilustracion_sin_titulo-1',-250,-200)
    scaleObject('schoolGlitchBg',1.5,1.5)
    addLuaSprite('schoolGlitchBg',false)

    makeLuaSprite('schoolGlitchWall','backgrounds/school-glitch/Ilustracion_sin_titulo-2',-380,0)
    addLuaSprite('schoolGlitchWall',true)

    makeLuaSprite('schoolGlitchOverlay1','backgrounds/school-glitch/188_sin_titulo11_20230523094718',-250,0)
    addLuaSprite('schoolGlitchOverlay1',true)

    makeLuaSprite('schoolGlitchOverlay2','backgrounds/school-glitch/Ilustracion_sin_titulo-3',0,0)
    screenCenter('schoolGlitchOverlay2')
    setObjectCamera('schoolGlitchOverlay2',  'hud')
    addLuaSprite('schoolGlitchOverlay2',true)
end

function removeSchoolGlitchStage()
  removeLuaSprite('schoolGlitchBg')
  removeLuaSprite('schoolGlitchWall')
  removeLuaSprite('schoolGlitchOverlay1')
  removeLuaSprite('schoolGlitchOverlay2')
end

function createGlitchScene()
  makeAnimatedLuaSprite('glitchScene', 'backgrounds/void/gumballglitchbg', -200, -200)
  setProperty('glitchScene.antialiasing', true)
  addAnimationByPrefix('glitchScene', 'idle', 'spin', 24, true)
  scaleObject('glitchScene',3,3)
  setObjectCamera('glitchScene', 'hud')
end

function createVoidStage()
    makeLuaSprite('voidBg','backgrounds/void/Ilustracion_sin_titulo-1',-350,-380)
    scaleObject('voidBg',2.4,2.4)
    addLuaSprite('voidBg',false)
end

function removeVoidStage()
  removeLuaSprite('voidBg')
end

function createVoid2Stage()
  makeLuaSprite('void2Bg','backgrounds/void2/1',-350,-200)
  addLuaSprite('void2Bg',false)

  makeLuaSprite('void2Mark12','backgrounds/void2/12',-350,-250)
  addLuaSprite('void2Mark12',true)

  makeLuaSprite('void2Mark8','backgrounds/void2/8',-400,-150)
  addLuaSprite('void2Mark8',true)
end

function removeVoid2Stage()
  removeLuaSprite('void2Bg')
  removeLuaSprite('void2Mark12')
  removeLuaSprite('void2Mark8')
end

function createCawmIntroStage()

  makeLuaSprite('img','backgrounds/intro/IMG_8337',-250,250)
  scaleObject('img',0.7,0.7)
  addLuaSprite('img',false)
  setProperty('img.alpha',1)

  makeLuaSprite('img2','backgrounds/intro/Ilustracion_sin_titulo-1',-150,250)
  scaleObject('img2',0.65,0.65)
  addLuaSprite('img2',true)
  setBlendMode('img2','multiply')
  setProperty('img2.alpha',1)

  makeLuaSprite('ill2','backgrounds/intro/Ilustracion_sin_titulo-2',-210,300)
  scaleObject('ill2',0.6,0.6)
  addLuaSprite('ill2',false)
  setProperty('ill2.alpha',1)

  makeLuaSprite('ill','backgrounds/intro/Ilustracion_sin_titulo-3',-150,250)
  addLuaSprite('ill',true)
  setProperty('ill.alpha',1)
end

function removeCawmIntroStage()
  removeLuaSprite('img')
  removeLuaSprite('img2')
  removeLuaSprite('ill2')
  removeLuaSprite('ill')
end

function tweenAlphaCawmIntroStage()
    doTweenAlpha('imgFade', 'img', 0, 1, 'linear');
    doTweenAlpha('img2Fade', 'img2', 0, 1, 'linear');
    doTweenAlpha('ill2Fade', 'ill2', 0, 1, 'linear');
    doTweenAlpha('illFade', 'ill', 0, 1, 'linear');
end

function createCawmRevealStage()
  makeLuaSprite('glitch','backgrounds/reveal/BackGlitch',-330,320)
  scaleObject('glitch',0.7,0.7)
  addLuaSprite('glitch',false)
  setProperty('glitch.alpha',0)

  makeLuaSprite('glitcha','backgrounds/reveal/AboveGlitch',-330,320)
  scaleObject('glitcha',0.7,0.7)
  addLuaSprite('glitcha',false)
  setProperty('glitcha.alpha',0)

  makeLuaSprite('hill','backgrounds/reveal/HillStuff',-330,320)
  scaleObject('hill',0.7,0.7)
  addLuaSprite('hill',false)
  setProperty('hill.alpha',0)

  makeLuaSprite('part','backgrounds/reveal/Particles',-330,320)
  scaleObject('part',0.5,0.5)
  addLuaSprite('part',true)
  setProperty('part.alpha',0)

  makeLuaSprite('dang','backgrounds/reveal/Dangling',-330,320)
  scaleObject('dang',0.7,0.7)
  addLuaSprite('dang',false)
  setProperty('dang.alpha',0)

  makeLuaSprite('corr','backgrounds/reveal/Corruption',-330,320)
  scaleObject('corr',0.7,0.7)
  addLuaSprite('corr',false)
  setProperty('corr.alpha',0)

  doTweenAlpha('glitchTween', 'glitch', 1, 1, 'linear');
  doTweenAlpha('glitchaTween', 'glitcha', 1, 1, 'linear');
  doTweenAlpha('hillTween', 'hill', 1, 1, 'linear');
  doTweenAlpha('partTween', 'part', 1, 1, 'linear');
  doTweenAlpha('dangTween', 'dang', 1, 1, 'linear');
  doTweenAlpha('corrTween', 'corr', 1, 1, 'linear');
  doTweenAlpha('bfTween', 'boyfriend', 1, 1, 'linear');
end

function removeCawmRevealStage()
  removeLuaSprite('glitch')
  removeLuaSprite('glitcha')
  removeLuaSprite('hill')
  removeLuaSprite('part')
  removeLuaSprite('dang')
  removeLuaSprite('corr')
end

function createTreeHouseStage()
  makeLuaSprite('back','backgrounds/tree-house/back',-1650,-1600)
  scaleObject('back',1.5,1.5)
  addLuaSprite('back',false)

  makeLuaSprite('backtree','backgrounds/tree-house/tree',-1650,-1600)
  scaleObject('backtree',1.5,1.5)
  addLuaSprite('backtree',false)

  makeAnimatedLuaSprite('rain','backgrounds/tree-house/Rain',-500,-700)
  addAnimationByPrefix('rain','rainshit','Rain',24,true)
  addLuaSprite('rain',true)
  objectPlayAnimation('rain','rainshit',true)
end

function removeTreeHouseStage()
  removeLuaSprite('back')
  removeLuaSprite('backtree')
  removeLuaSprite('rain')
end

function addCutscene()
    makeAnimatedLuaSprite('cutsceneFinn', 'noherocutscenefirst', -200, -400)
    setProperty('cutsceneFinn.antialiasing', true)
    addAnimationByPrefix('cutsceneFinn', 'anim', 'play', 24, false)
    setObjectCamera('cutsceneFinn',  'hud')
    addLuaSprite('cutsceneFinn',false)
    objectPlayAnimation('cutsceneFinn','anim',false)
    setProperty('cutsceneFinn.alpha',0)
    doTweenAlpha('cutsceneFinnShow','cutsceneFinn',1,0.8,'linear')
end

function precacheImagesStage()

  precacheImage('backgrounds/school-glitch/Ilustracion_sin_titulo-1')
  precacheImage('backgrounds/school-glitch/Ilustracion_sin_titulo-2')
  precacheImage('backgrounds/school-glitch/188_sin_titulo11_20230523094718')
  precacheImage('backgrounds/school-glitch/Ilustracion_sin_titulo-3')

  precacheImage('backgrounds/void/gumballglitchbg')
  precacheImage('backgrounds/void/Ilustracion_sin_titulo-1')

  precacheImage('backgrounds/void2/1')
  precacheImage('backgrounds/void2/12')
  precacheImage('backgrounds/void2/8')

  precacheImage('backgrounds/intro/IMG_8337')
  precacheImage('backgrounds/intro/Ilustracion_sin_titulo-1')
  precacheImage('backgrounds/intro/Ilustracion_sin_titulo-2')
  precacheImage('backgrounds/intro/Ilustracion_sin_titulo-3')

  precacheImage('backgrounds/reveal/BackGlitch')
  precacheImage('backgrounds/reveal/AboveGlitch')
  precacheImage('backgrounds/reveal/HillStuff')
  precacheImage('backgrounds/reveal/Particles')
  precacheImage('backgrounds/reveal/Dangling')
  precacheImage('backgrounds/reveal/Corruption')

  precacheImage('backgrounds/tree-house/back')
  precacheImage('backgrounds/tree-house/tree')
  precacheImage('backgrounds/tree-house/Rain')

  precacheImage('noherocutscenefirst')
end

function onCreate()
  precacheImagesStage()
  createSchoolGlitchStage();
  createGlitchScene();
end


function onCreatePost()
  setTextFont('timeTxt', 'Gumball.ttf')
  setTextFont('scoreTxt', 'Gumball.tff')
  setTextFont('botplayTxt','Gumball.tff')
  setProperty('cameraSpeed', 2) 

  initLuaShader("glitchy")
  initLuaShader("ChromaticAbberation")
  initLuaShader("blur")
  initLuaShader("glitchy2")

    makeLuaSprite("temporaryShader1")
  setSpriteShader("temporaryShader1", "glitchy")
  
  makeLuaSprite("temporaryShader2")
  setSpriteShader("temporaryShader3", "blur")
  
  makeLuaSprite("Shader")
  setSpriteShader("Shader", "ChromaticAbberation")
  
  
      runHaxeCode([[
  trace(ShaderFilter);
  
  game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader3").shader)]);
  
  game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader3").shader),new ShaderFilter(game.getLuaObject("Shader").shader)]);
  playerStrums.forEachExists(strum -> strum.shader = Shader);
      ]])
  addHaxeLibrary("ShaderFilter1", "openfl.filters")
  
  setShaderFloat("temporaryShader2", "cx", 0.5)
  setShaderFloat("temporaryShader2", "cy", 0.5)
  setShaderFloat("Shader", "amount", 0.2)
end

function onUpdate(elapsed)

  floatingArrows()

  if curStep == 688 then
    setSpriteShader('dad',"glitchy2")
    setSpriteShader('iconP2',"glitchy2")
  end

  if curStep == 1207 then
    addLuaSprite('glitchScene',false)
    addGlitchEffect('glitchScene',2,2)
  end

  if curStep == 1215 then
    removeSchoolGlitchStage()
    createVoidStage()
    setProperty('glitchScene.visible',false)

    setProperty('dad.x',getProperty('dad.x') + 100)
    setProperty('dad.y',getProperty('dad.y') + 5)
  end

  if curStep == 1472 then
    setSpriteShader('boyfriend',"glitchy2")
    setSpriteShader('iconP1',"glitchy2")
  end

  if curStep == 1720 then
    setProperty('glitchScene.visible',true)
  end

  if curStep == 1735 then
    removeLuaSprite('glitchScene')
    removeVoidStage()
    createVoid2Stage()
    setProperty('dad.x',getProperty('dad.x') - 40)
  end

  if curStep == 1740 then
    setSpriteShader('boyfriend',"glitchy2")
    setSpriteShader('iconP1',"glitchy2")
  end

  if curStep == 2024 then
    setProperty('black.alpha',1)
    removeVoid2Stage();
  end

  if curStep == 2286 then
    createCawmIntroStage()
    doTweenAlpha('blackReveal', 'black', 0, 5, 'linear');
    setProperty('boyfriend.alpha',0)
    setTextFont('scoreTxt', 'finn.ttf')
    setTextFont('timeTxt', 'finn.ttf')
    setTextFont('botplayTxt', 'finn.ttf')
  end

  if curStep == 2863 then
    setSpriteShader('dad',"glitchy2")
    setSpriteShader('iconP2',"glitchy2")
  end

  if curStep == 3086 then
    createCawmRevealStage()
    tweenAlphaCawmIntroStage()
    floating = true;
  end

  if curStep == 3232 then
    setSpriteShader('dad',"glitchy2")
    setSpriteShader('iconP2',"glitchy2")
  end

  if curStep == 3360 then
    cameraFlash('camHUD', '0xFFFFFFFF', 0.5)
    removeCawmRevealStage()
    createTreeHouseStage()
    setProperty('boyfriend.color',getColorFromHex('5D4371'));
  end

  if curStep == 3570 then
    addCutscene()
  end

  if curStep == 3616 then
    removeTreeHouseStage()
    doTweenAngle('bfspin','boyfriend',180,0.0001,'linear')
    setProperty('boyfriend.flipX', true)
  end

  if curStep == 4008 then
    doTweenAlpha('blackfade4', 'black', 0, 2, 'linear');
  end
end


function onUpdatePost(elapsed)
  setShaderFloat("dad", "iTime", os.clock())
  setShaderFloat("temporaryShader3", "blurWidth", 0.09)


  for i = 0, getProperty('opponentStrums.length')-1 do

    if not getPropertyFromGroup('notes', i, 'mustPress') then
      setPropertyFromGroup('notes', i, 'texture', 'GlitchNOTE_assets');
    end
  end

  for i = 0, getProperty('playerStrums.length')-1 do

    if getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing') then
      setPropertyFromGroup('notes', i, 'noteSplashTexture', 'GlitchnoteSplashes');
    end
  end

end

function onTweenCompleted(tag)

  if tag == 'imgFade' then
    removeCawmIntroStage()
  end

end


function onBeatHit()
  if getProperty('cutsceneFinn.animation.curAnim.name') == 'anim' and getProperty('cutsceneFinn.animation.curAnim.finished') then
      removeLuaSprite('cutsceneFinn')
    end

end

function floatingArrows()
  if floating == true then
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    noteTweenY('defaultOpponentStrumY0', 0, defaultPlayerStrumY0 - 50*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
    noteTweenY('defaultOpponentStrumY1', 1, defaultPlayerStrumY1 - 50*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
    noteTweenY('defaultOpponentStrumY2', 2, defaultPlayerStrumY2 - 50*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
    noteTweenY('defaultOpponentStrumY3', 3, defaultPlayerStrumY3 - 50*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
    noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
    noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 50*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
    noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 50*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
    noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 50*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
  end
end