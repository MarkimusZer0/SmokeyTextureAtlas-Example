function onCreate()
	makeAnimatedLuaSprite('atlasPico-test', 'testSheet/Pico_Atlas', 100, 100, 'tex');
	addAnimationByPrefix('atlasPico-test', 'idleAnimation', 'Pico-Idle', 24, false);
	addLuaSprite('atlasPico-test', true);
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('atlasPico-test', 'idleAnimation', false);
	end
end