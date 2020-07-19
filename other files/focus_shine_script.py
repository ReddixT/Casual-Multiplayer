# Discord Tag: Badbeef#2001
# Written on 25th April 2020

# Note: You need to declare the names for the files, since they will not be uw_goals.gfx and uw_goals_shine.gfx in your mod. The script will spit out the files in the same directory that the script is in. If the console that you run is in a specific folder, it will spit it out in there.


import os, sys, re

def main():
	GOAL_FILE = "C:/Users/rene_/Documents/Paradox Interactive/Hearts of Iron IV/mod/Casual Multiplayer/interface/_CMU_goals.gfx" # the input file path
	SHINE_FILE = "C:/Users/rene_/Documents/Paradox Interactive/Hearts of Iron IV/mod/Casual Multiplayer/interface/_CMU_goals_shine.gfx" # the file path to output to

	focusIDs = []
	focusIDPaths = []
	with open(SHINE_FILE, 'w') as shines_file, open(GOAL_FILE, 'r' ) as goals_file: # adds the final "}" to the file
		for line in goals_file:
			lookForGFXName = re.search('name = "GFX_(.+?)"', line.strip())
			lookForGFXPathName = re.search('texturefile = "(.+?)"', line.strip())
			if lookForGFXName:
				focusIDs.append(lookForGFXName.group(1))
			if lookForGFXPathName:
				focusIDPaths.append(lookForGFXPathName.group(1))

		shines_file.write("spriteTypes = {	")

		for ID in range(len(focusIDs)): # the shine code
			focusShineString = '''
	SpriteType = {{
		name = "GFX_{}_shine"
		texturefile = "{}"			
		effectFile = "gfx/FX/buttonstate.lua"
		animation = {{
			animationmaskfile = "{}"			
			animationtexturefile = "gfx/interface/goals/shine_overlay.dds" 	# <- the animated file
			animationrotation = -90.0		# -90 clockwise 90 counterclockwise(by default)
			animationlooping = no			# yes or no ;)
			animationtime = 0.75				# in seconds
			animationdelay = 0			# in seconds
			animationblendmode = "add"       #add, multiply, overlay
			animationtype = "scrolling"      #scrolling, rotating, pulsing
			animationrotationoffset = {{ x = 0.0 y = 0.0 }}
			animationtexturescale = {{ x = 1.0 y = 1.0 }} 
		}}
		
		animation = {{
			animationmaskfile = "{}"			
			animationtexturefile = "gfx/interface/goals/shine_overlay.dds" 	# <- the animated file
			animationrotation = 90.0		# -90 clockwise 90 counterclockwise(by default)
			animationlooping = no			# yes or no ;)
			animationtime = 0.75				# in seconds
			animationdelay = 0			# in seconds
			animationblendmode = "add"       #add, multiply, overlay
			animationtype = "scrolling"      #scrolling, rotating, pulsing
			animationrotationoffset = {{ x = 0.0 y = 0.0 }}
			animationtexturescale = {{ x = 1.0 y = 1.0 }} 
		}}
		legacy_lazy_load = no
	}}'''.format(focusIDs[ID], focusIDPaths[ID], focusIDPaths[ID], focusIDPaths[ID])
	
			shines_file.write(focusShineString)

		shines_file.write("\n}")

main()