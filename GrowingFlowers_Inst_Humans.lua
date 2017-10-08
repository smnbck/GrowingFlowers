
GrowingFlowers_Inst_Humans = {};

local fileID = "id_202"

local instructionsTitle = "Humans - Level 1 to 12"

local race = "Humans"

local instructions = {
  { text="Directly in front of where you start accept “A Threat Within” then go in the building and turn it in, accept “Kobold Camp Cleanup”", minLvl="1", maxLvl="12" },
  { text="Go to the nook at the NW corner of the building at 48,40 and accept “Wolves Across the Border”", minLvl="1", maxLvl="12" },
  { text="Kill the wolves all in front of you for “Wolves Across the Border” while working your way to the kobold vermin at 47,35 for “Kobold Camp Cleanup”", minLvl="1", maxLvl="12" },
  { text="Go back to 48,40 and turn in “Wolves Across the Border”", minLvl="1", maxLvl="12" },
  { text="Run into the house at 48,41 and turn in “Kobold Camp Cleanup” accept “Simple Letter” and “Investigate Echo Ridge”", minLvl="1", maxLvl="12" },
  { text="Go to the warrior trainer at 50,42 and turn in “Simple Letter” and train", minLvl="1", maxLvl="12" },
  { text="Exit the house and grab “Brotherhood of Thieves” just outside", minLvl="1", maxLvl="12" },
  { text="Go NW toward the cave at 47,32 and kill kobold workers on the way up tp it for “Investigate Echo Ridge”", minLvl="1", maxLvl="12" },
  { text="Go West to 54,40 and go south killing the defias until you finish “Brotherhood of Thieves” you should have dinged 4 by the time you’re done, if not just kill until you are", minLvl="1", maxLvl="12" },
  { text="Run back to the abbey at 48,42 and turn in “Brotherhood of Thieves” accept “Milly Osworth” and “Bounty on Garrick Padfoot”", minLvl="1", maxLvl="12" },
  { text="Go inside the house and turn in “Investigate Echo Ridge” accept “Skirmish at Echo Ridge” then get new skills", minLvl="1", maxLvl="12" },
  { text="Go north of the house at 50,39 next to the barn, turn in “Milly Osworth” accept “Milly’s Harvest”", minLvl="1", maxLvl="12" },
  { text="Go back east and grab the grapes in the garden at 54,48 for “Milly’s Harvest” then NE to 57,48 you’ll see a shack with padfoot and a thug. Kill him for “Bounty on Garrick Padfoot”", minLvl="1", maxLvl="12" },
  { text="Go back to 50,39 and turn in “Milly’s Harvest” accept “Grape Manifest”", minLvl="1", maxLvl="12" },
  { text="Go into the cave at 47,31 and kill kobold laborer’s for “Skirmish at Echo Ridge”", minLvl="1", maxLvl="12" },
  { text="Hearth back to the Abbey", minLvl="1", maxLvl="12" },
  { text="Turn in “Bounty on Garrick Padfoot” right in front of you", minLvl="1", maxLvl="12" },
  { text="Go inside the house, turn in “Skirmish at Echo Ridge” accept “Report to Goldshire”", minLvl="1", maxLvl="12" },
  { text="Go to the top of the tower through the spiral staircase, turn in “Grape Manifest”", minLvl="1", maxLvl="12" },
  { text="Go to 45,47 and accept “Rest and Relaxation”", minLvl="1", maxLvl="12" },
  { text="If you’re not 6 you should be close, just grind on a few mobs while you head towards the house near goldshire at 46,62 and pick up skinning if you want it", minLvl="1", maxLvl="12" },
  { text="Reach goldshire and enter the Inn at 42,65", minLvl="1", maxLvl="12" },
  { text="Just to your left accept “Kobold Candles”", minLvl="1", maxLvl="12" },
  { text="Near the bar turn in “Rest and Relaxation” and make Goldshire your home", minLvl="1", maxLvl="12" },
  { text="Exit the Inn and go straight out, turn in “Report to Goldshire” accept “The Fargodeep Mine”", minLvl="1", maxLvl="12" },
  { text="Get your new skills in town here.", minLvl="1", maxLvl="12" },
  { text="Go near the carts at 42,67 and accept “Gold Dust Exchange”", minLvl="1", maxLvl="12" },
  { text="Go south to the Fargodeep Mine at 39,82 and kill the kobold until you complete all 3 quests “The Fargodeep Mine”, “Gold Dust Exchange”, and “Kobold Candles” Make sure you go in the lower entrance so “The Fargodeep Mine” is easier", minLvl="1", maxLvl="12" },
  { text="Once all 3 are done go to the stonefield farm just up the hill east at 34,84 and accept “Lost Necklace” SKIP “Princess Must Die!” it’s just too hard to do alone.", minLvl="1", maxLvl="12" },
  { text="Go east to the Maclure Vinyard at 43,80 and accept “Young Lovers”", minLvl="1", maxLvl="12" },
  { text="Go to 43,85 and turn in “Lost Necklace” accept “Pie For Billy” then turn around and kill boars until it’s finished.", minLvl="1", maxLvl="12" },
  { text="Go back west to 34,84 and turn in “Pie For Billy” and accept “Back to Billy”", minLvl="1", maxLvl="12" },
  { text="Go west some to the river at 29,85 and turn in “Young Lovers” accept “Speak with Gramma”", minLvl="1", maxLvl="12" },
  { text="Go back to 34,84 and turn in “Speak with Gramma” in the house, accept “Note to William”", minLvl="1", maxLvl="12" },
  { text="Run back east to 43,85 and turn in “Back to Billy” accept “Goldtooth”", minLvl="1", maxLvl="12" },
  { text="Go in the bottom entrance of the fargodeep mine at 39,82 and to about 41,78 inside and kill goldtooth for “Goldtooth” You should ding 7 sometime in the cave or before you came in.", minLvl="1", maxLvl="12" },
  { text="Hearth back to Goldshire", minLvl="1", maxLvl="12" },
  { text="In the Inn turn in “Kobold Candles” accept “Shipment to Stormwind” also turn in “Note to William” accept “Collecting Kelp”", minLvl="1", maxLvl="12" },
  { text="Straight outside the Inn, turn in “The Fargodeep Mine” accept “The Jasperlode Mine”", minLvl="1", maxLvl="12" },
  { text="South near the fence, turn in “Gold Dust Exchange” You should have dinged lvl 7 now, accept “A Fishy Peril”", minLvl="1", maxLvl="12" },
  { text="Turn around by the blacksmith and turn it in, accept “Further Concerns”", minLvl="1", maxLvl="12" },
  { text="Kill murlocs around the lake at 51,65 for “Collecting Kelp”", minLvl="1", maxLvl="12" },
  { text="Grind up to the Jasperlode mine at 61,53 and run through it about half way to 60,50 for “The Jasperlode Mine”", minLvl="1", maxLvl="12" },
  { text="Run to the bridge at 73,72 and turn in “Further Concerns” accept “Find the Lost Guards” and “Protect the Frontier”", minLvl="1", maxLvl="12" },
  { text="Stop at the house NE of here at 79,68 and accept “Red Linen Goods”", minLvl="1", maxLvl="12" },
  { text="At the center of the camp, 81,66, accept “A Bundle of Trouble”", minLvl="1", maxLvl="12" },
  { text="Run just west of the waterfall at 72,60 touch the mangled body and turn in “Find the Lost Guards” accept “Discover Rolf’s Fate” if this doesn’t make you ding 8 then grind that last tiny bit.", minLvl="1", maxLvl="12" },
  { text="Go to the murloc camp at 79,55 and loot the mangled body there (might need a group, but usually always people here) and turn in “Discover Rolf’s Fate” accept “Report to Thomas”", minLvl="1", maxLvl="12" },
  { text="Go south to 81,66 and turn in “A Bundle of Trouble”", minLvl="1", maxLvl="12" },
  { text="Cross the road and go south and east and finish killing the bears and wolves for “Protect the Frontier” bears are kinda scarce so you might have to search.", minLvl="1", maxLvl="12" },
  { text="While doing this you can get some, if not all, of the red bandannas for “Red Linen Goods” at 90,78", minLvl="1", maxLvl="12" },
  { text="Go back to 73,72 near the bridge and turn in “Protect the Frontier” and “Report to Thomas” acept “Deliver Thomas’ Report”", minLvl="1", maxLvl="12" },
  { text="Go down to the pumpkin patch at 69,78 and kill the rest of the defias for “Red Linen Goods”", minLvl="1", maxLvl="12" },
  { text="You might find Furlbrow’s Deed on the defias while you’re killing defias just hold it for now.", minLvl="1", maxLvl="12" },
  { text="Go to 79,68 and turn in “Red Linen Goods” it should make you lvl 9 or bring you really close", minLvl="1", maxLvl="12" },
  { text="Stop at the bridge again at 73,72 and accept “Report to Gryan Stoutmantle” must be 9 to accept", minLvl="1", maxLvl="12" },
  { text="Hearth to Goldshire", minLvl="1", maxLvl="12" },
  { text="By the front door turn in “Collecting Kelp” accept “The Escape”", minLvl="1", maxLvl="12" },
  { text="Just outside the Inn turn in “The Jasperlode Mine” and “Deliver Thomas’ Report” SKIPt “Cloth and Leather Armor” accept “Westbrook Garrison Needs Help!”", minLvl="1", maxLvl="12" },
  { text="In the blacksmith house right here accept “Elmore’s Task” then get training", minLvl="1", maxLvl="12" },
  { text="Run south to the maclure vinyard at 43,89 and turn in “The Escape”", minLvl="1", maxLvl="12" },
  { text="Run west to the stonefield farm at 34,84 and turn in “Goldtooth”", minLvl="1", maxLvl="12" },
  { text="Go NW to 34,74 and turn in “Westbrook Garrison Needs Help!” accept “Riverpaw Gnoll Bounty” You will also see the wanted poster and it’s the famous old hogger quest. He’s a tough lvl 11 elite and is not easy so skip it, unless you have a group it’s up to you. Remember on new servers you’re probably still within range of everyone so it shouldn’t be hard to get done.", minLvl="1", maxLvl="12" },
  { text="Go just south of the road and start killing gnolls for “Riverpaw Gnoll Bounty” they can also drop a gold schedule which starts a quest", minLvl="1", maxLvl="12" },
  { text="Go back up to 34,74 and turn in “Riverpaw Gnoll Bounty”", minLvl="1", maxLvl="12" },
  { text="You should be very close to 10 now.", minLvl="1", maxLvl="12" },
  { text="Follow the road west into Westfall", minLvl="1", maxLvl="12" },
  { text="Go to 59,19 and turn in “Furlbrow’s Deed” if you found it before", minLvl="1", maxLvl="12" },
  { text="Accept “Westfall Stew” SKIP “Poor Old Blanchy”", minLvl="1", maxLvl="12" },
  { text="Go in the house at 56,30 and turn in “Westfall Stew”", minLvl="1", maxLvl="12" },
  { text="Go to 56,47 and turn in “Report to Gryan Stoutmantle”", minLvl="1", maxLvl="12" },
  { text="Go in the tower and accept “A Swift Message”", minLvl="1", maxLvl="12" },
  { text="Get the FP at 56,52 and turn in “A Swift Message” accept “Continue to Stormwind”", minLvl="1", maxLvl="12" },
  { text="Fly to SW unless you did hogger, then hearth to Goldshire and turn it in outside the Inn then train", minLvl="1", maxLvl="12" },
  { text="In SW go to 56,64 and turn in “Shipment to Stormwind”", minLvl="1", maxLvl="12" },
  { text="Train new weapons at 57,57", minLvl="1", maxLvl="12" },
  { text="Go to 74,47 and turn in “Continue to Stormwind” accept “Dungar Longdrink”", minLvl="1", maxLvl="12" },
  { text="Go to 51,12 and turn in “Elmore’s Task” accept “Stormpike’s Delivery” this will be done on the way to the wetlands", minLvl="1", maxLvl="12" },
  { text="Go to 78,45 and accept “A Warrior’s Training” or your classes lvl 10 quest.", minLvl="1", maxLvl="12" },
  { text="Go to 66,62 and turn in “Stormpike’s Delivery” accept “Return to Lewis” then fly back to Westfall", minLvl="1", maxLvl="12" },
  { text="Go to the tower at 56,47 and turn in “Return to Lewis” super easy xp", minLvl="1", maxLvl="12" },
  { text="Fly back to SW Go in the bar at 74,37 and turn in “A Warrior’s Training” accept “Bartleby the Drunk” then turn around and hand it in accept “Beat Bartleby”", minLvl="1", maxLvl="12" },
  { text="Kick bartleby’s ass then talk to him again and accept “Bartleby’s Mug” then turn it in behind you and learn your defense", minLvl="1", maxLvl="12" },
  { text="Go into the tram at 63,8 and take it to IF", minLvl="1", maxLvl="12" },
  { text="Once it stops accept “Deeprun Rat Roundup” just collect 5 rats and turn it in. SKIP “Me Brother, Nipsy” unless you go back to SW on the tram because you get crap xp", minLvl="1", maxLvl="12" },
  { text="Grab the FP at 55,47", minLvl="1", maxLvl="12" },
  { text="After the rat quest you should be real close to 11", minLvl="1", maxLvl="12" },
  { text="Leave IF and head into Dun Morogh", minLvl="1", maxLvl="12" },
  { text="Run east to 68,55 and accept “The Public Servant”", minLvl="1", maxLvl="12" },
  { text="Go behind him and accept “Those Blasted Troggs!”", minLvl="1", maxLvl="12" },
  { text="Go in the pidd below and kill the troggs here and in the cave for both quests then turn them back in at 68,55", minLvl="1", maxLvl="12" },
  { text="Go east to 80,51 and follow the path into Loch Modan", minLvl="1", maxLvl="12" },
  { text="Go to 22,73 and accept “In Defense of the King’s Lands”", minLvl="1", maxLvl="12" },
  { text="Go up in the tower and accept “The Trogg Threat”", minLvl="1", maxLvl="12" },
  { text="At 33,50 grab the FP", minLvl="1", maxLvl="12" },
  { text="Look for the wandering guidrd and accept “Rat Catching”", minLvl="1", maxLvl="12" },
  { text="Kill troggs from 27,53 and north for “In Defense of the King’s Lands” and “The Trogg Threat”", minLvl="1", maxLvl="12" },
  { text="Go back to 22,73 and turn them both in", minLvl="1", maxLvl="12" },
  { text="Go north to the tower at 24,18 and turn in “Stormpike’s Delivery”", minLvl="1", maxLvl="12" },
  { text="You should be 12 now or close to it. You can grind if you’d like. Now you go north through the wetlands to menethil, then boat to auberdine from here.", minLvl="1", maxLvl="12" },
  { text="Next up is Part 1 of the global Alliance Guide", minLvl="1", maxLvl="12" },

}

function GrowingFlowers_Inst_Humans:getFileID()
  return fileID
end

function GrowingFlowers_Inst_Humans:getInstructions()
  return instructions
end

function GrowingFlowers_Inst_Humans:getInstructionsTitle()
  return instructionsTitle
end

function GrowingFlowers_Inst_Humans:getRace()
  return race
end
