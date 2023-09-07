local xx = 500; --750
local yy = 600; --750

local xx2 = 1300; --1500
local yy2 = 600; --750

local ofs = 50;
local ofs2 = 50;

local dadzoom = 0.9;
local bfzoom = 0.9;

function onCreate()

end

function onCreatePost()
    triggerEvent('Camera Follow Pos',xx,yy)
end

function onUpdate(elapsed)
    follow()


    if curStep == 656 then
        dadzoom = 1.4;
    end

    if curStep == 687 then
        dadzoom = 0.9;
    end

    if curStep == 1215 then
        dadzoom = 0.7;
        bfzoom = 0.7;
        xx = 800
    end

    if curStep == 1471 then
        dadzoom = 1.2;
        bfzoom = 1.2;
    end

    if curStep == 1735 then
        dadzoom = 0.75;
        bfzoom = 0.75;
    end

    if curStep == 2288 then
        xx = 600
        xx2 = 600
        yy = 720
        yy2 = 720
        ofs = 0;
        ofs2 = 0;
        dadzoom = 0.9;
        bfzoom = 0.9;
    end

    if curStep == 3360 then
        xx2 = 1300
        ofs = 50;
        ofs2 = 50;
        dadzoom = 0.7;
        bfzoom = 0.7;
        yy = 650
        yy2 = 650
    end

    if curStep == 3616 then
        xx = 800
        xx2 = 800
        yy = 500
        yy2 = 500
        ofs = 20;
        ofs2 = 20;
    end
end

function follow()
    if mustHitSection == false then
            setProperty('defaultCamZoom',dadzoom)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs2,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs2,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs2,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs2,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'still' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
    else
            setProperty('defaultCamZoom',bfzoom)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
    end
end