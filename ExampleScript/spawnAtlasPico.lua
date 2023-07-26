function onCreate()
	--[ Making the sprite ]--
	-- makeAnimatedLuaSprite is the function to make animated lua sprites (wow!)
	-- 'atlasPico-test' is the object's tag, basically a codename for the lua sprite
	-- 'testSheet/Pico_Atlas' is the path to the sprite's files, starting from the images folder
	-- 100, Horizontal position of the sprite
	-- 100, Vertical position of the sprite
	-- 'tex' is the type of our lua sprite, default is Sparrow and putting 'tex' makes it an Atlas sprite
	makeAnimatedLuaSprite('atlasPico-test', 'testSheet/Pico_Atlas', 100, 100, 'tex');
	
	
	--[ Adding Animations ]--
	-- addAnimationByPrefix is the function used to add animations from XMLs, also works for Atlas
	-- 'atlasPico-test', is the object's tag
	-- 'idleAnimation' is a codename for the sprite's animation that will be used later
	-- 'Pico-Idle', the actual name of the animation in the spritesheet, in this case, it's the animation's label
	-- 24, Framerate of the animation
	-- false, whether the animation should loop, can be true or false
	addAnimationByPrefix('atlasPico-test', 'idleAnimation', 'Pico-Idle', 24, false);
	
	
	--[ Adding the sprite to the game ]--
	-- addLuaSprite is the function for adding any type of lua sprite to the stage
	-- 'atlasPico-test', is the object's tag
	-- true, whether the sprite should be over the characters (BF, GF and Dad)
	addLuaSprite('atlasPico-test', true);
end

function onBeatHit()
	
	--[ Making the sprite play an idle animation like the characters ]--
	if curBeat % 2 == 0 then -- Check to run the code below every 2 beats (basically like the characters's idles)
		
		-- playAnim is the function to make lua sprites play their animations
		-- 'atlasPico-test' is the object's tag
		-- idleAnimation is the name given to the animation in addAnimationByPrefix
		-- false, whether the animation should reset if it's played over itself
		playAnim('atlasPico-test', 'idleAnimation', false);
	end
end
