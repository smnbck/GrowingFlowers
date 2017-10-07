
GrowingFlowers_Inst_Nightelfs = {};

local fileID = "id_201"

local instructionsTitle = "Nightelfs - Level 1 to 12"

local race = "Nightelfs"

local instructions = {
  { text="Accept “The Balance of Nature pt.1” at 58,44 and go do it by killing mobs at 57,45 and 61,43. Turn it in at 58,44.", minLvl="1", maxLvl="12" },
  { text="Accept “The Balance of Nature pt.2”and “Etched Sigil” at 58,44. “The Woodland Protector pt.1” at 59,42 and “A Good Friend” at 60,41", minLvl="1", maxLvl="12" },
  { text="Hand in “The Woodland Protector pt.1” at 57,45 and accept “The Woodland Protector pt.2” Mobs are at 56,46. Turn it in at 57,45.", minLvl="1", maxLvl="12" },
  { text="Accept “Webwood Venom” at 57,41.", minLvl="1", maxLvl="12" },
  { text="Turn in your class quest and get skills.", minLvl="1", maxLvl="12" },
  { text="Do “The Balance of Nature pt.2”. Mobs are all around 60,35", minLvl="1", maxLvl="12" },
  { text="“Webwood Venom” at 57,32 in and outside the cave", minLvl="1", maxLvl="12" },
  { text="Turn in “A Good Friend” at 54,32 in a cove just west of the cave. Accept “A Friend in Need”", minLvl="1", maxLvl="12" },
  { text="Turn in “Webwood Venom” at 57,41. Accept “Webwood Egg”", minLvl="1", maxLvl="12" },
  { text="Get new skills", minLvl="1", maxLvl="12" },
  { text="Turn in “The Balance of Nature pt.2” at 58,44", minLvl="1", maxLvl="12" },
  { text="Turn in “A Friend in Need” at 60,41, accept “Iverron’s Antidote pt.1”", minLvl="1", maxLvl="12" },
  { text="Do “Iverron’s Antidote pt.1” (lilies and mushrooms) around 57,37", minLvl="1", maxLvl="12" },
  { text="Do “Iverron’s Antidote pt.1” (ichor) in the cave 57,32 along with “Webwood Egg” at 56,26", minLvl="1", maxLvl="12" },
  { text="Turn in “Webwood Egg” at 57,41 Accept “Tenaron’s Summons” then Run up the ramp to the top of the tree and hand it in at 59,39. Accept “Crown of the Earth pt.1”", minLvl="1", maxLvl="12" },
  { text="Turn in “Iverron’s Antidote pt.1” accept “Iverron’s Antidote pt.2”", minLvl="1", maxLvl="12" },
  { text="Do “Crown of the Earth pt.1” at 59,32", minLvl="1", maxLvl="12" },
  { text="Turn in “Iverron’s Antidote pt.2” at 54,32", minLvl="1", maxLvl="12" },
  { text="Turn in “Crown of the Earth pt.1” at 59,39 Accept “Crown of the Earth pt.2”", minLvl="1", maxLvl="12" },
  { text="If you’re not level 6 yet, you should be close. Level and get skills. Head towards Dolanaar", minLvl="1", maxLvl="12" },
  { text="Accept “Dolanaar Delivery” at 61,47", minLvl="1", maxLvl="12" },
  { text="Accept “Zenn’s Bidding” at 60,56", minLvl="1", maxLvl="12" },
  { text="Make Dolanaar your home.", minLvl="1", maxLvl="12" },
  { text="Turn in “Dolanaar Delivery” at 55,59 in Dolanaar", minLvl="1", maxLvl="12" },
  { text="Turn in “Crown of the Earth pt.2” at 56,61 accept “Crown of the Earth pt.3”", minLvl="1", maxLvl="12" },
  { text="Accept “Denalan’s Earth”, “A Troubling Breeze”, get First Aid, accept “The Emerald Dreamcatcher” and “Twisted Hatred”", minLvl="1", maxLvl="12" },
  { text="Accept “The Road to Darnassus” from the mounted patrol (if she’s there) right around 56,57", minLvl="1", maxLvl="12" },
  { text="Do “Zenn’s Bidding”. Mobs are east of Dolanaar", minLvl="1", maxLvl="12" },
  { text="“Crown of the Earth pt.3” at 63,58", minLvl="1", maxLvl="12" },
  { text="Turn in “A Troubling Breeze” at 66,58 accept “Gnarlpine Corruption”", minLvl="1", maxLvl="12" },
  { text="Do “The Emerald Dreamcatcher” at 68,59", minLvl="1", maxLvl="12" },
  { text="Turn in “Zenn’s Bidding” at 60,56", minLvl="1", maxLvl="12" },
  { text="Go to the Dolanaar tower and get “Seek Redemption!”", minLvl="1", maxLvl="12" },
  { text="Do “Seek Redemption!” (cones under trees) while heading to 60,68 and turn in “Denalan’s Earth”", minLvl="1", maxLvl="12" },
  { text="Accept and do “Timberling Seeds” (mobs all around lake) & “Timberling Sprouts” (seeds around trees near lake)", minLvl="1", maxLvl="12" },
  { text="Hand those back in and accept “Rellian Greenspyre”", minLvl="1", maxLvl="12" },
  { text="Run to Dolanaar", minLvl="1", maxLvl="12" },
  { text="Turn in “Crown of the Earth pt.3” accept “Crown of the Earth pt.4”", minLvl="1", maxLvl="12" },
  { text="Go to tower in Dolanaar:", minLvl="1", maxLvl="12" },
  { text="Turn in “Gnarlpine Corruption” accept “The Relics of Wakening”", minLvl="1", maxLvl="12" },
  { text="Turn in “The Emerald Dreamcatcher” accept “Ferocitas the Dream Eater”", minLvl="1", maxLvl="12" },
  { text="You should be 8 by now. Get new skills", minLvl="1", maxLvl="12" },
  { text="Finish “Seek Redemption!” Then go North of Starbreeze", minLvl="1", maxLvl="12" },
  { text="Do “Ferocitas the Dream Eater” mobs around 68,53", minLvl="1", maxLvl="12" },
  { text="Die on purpose so you end up at Dolanaar", minLvl="1", maxLvl="12" },
  { text="Run to Fel Rock Cave at 54,52 and do “Twisted Hatred” you can also wait until you’re 10 to do this. Makes it easier.", minLvl="1", maxLvl="12" },
  { text="Turn in “Ferocitas the Dream Eater” & “Twisted Hatred” at Dolanaar", minLvl="1", maxLvl="12" },
  { text="Do “The Road to Darnassus” at 46,52", minLvl="1", maxLvl="12" },
  { text="Go do “The Relics of Wakening” at 44,57 in the cave", minLvl="1", maxLvl="12" },
  { text="Accept “The Sleeping Druid” inside, kill shamans to get it, turn it in.", minLvl="1", maxLvl="12" },
  { text="Accept “Druid of the Claw” do it at 45,58", minLvl="1", maxLvl="12" },
  { text="I stop at 42,49 to get skinning", minLvl="1", maxLvl="12" },
  { text="Go south and do “Crown of the Earth pt.4” at 42,67", minLvl="1", maxLvl="12" },
  { text="Die so you end up at Dolanaar", minLvl="1", maxLvl="12" },
  { text="Turn in “Crown of the Earth pt.4” accept “Crown of the Earth pt.5”", minLvl="1", maxLvl="12" },
  { text="Turn in “The Road to Darnassus” just west of tower to mountie", minLvl="1", maxLvl="12" },
  { text="Turn in “The Relics of Wakening” accept “Ursal the Mauler”", minLvl="1", maxLvl="12" },
  { text="You should be 10 now, if not grind to it and lets get your pet (if you're not a hunter you can do your own class quest if you want to)", minLvl="1", maxLvl="12" },
  { text="Accept “Taming the Beast pt.1” (still hunter quest, webwood lurker) 58,60", minLvl="1", maxLvl="12" },
  { text="Accept “Taming the Beast pt.2” (still hunter quest, nightsaber stalker) 55,73", minLvl="1", maxLvl="12" },
  { text="Accept “Taming the Beast pt.3” (still hunter quest, strigid screecher) 55,73", minLvl="1", maxLvl="12" },
  { text="I tamed a Strigid Hunter to get claw rank 2 and growl rank 2 (still hunter quest)", minLvl="1", maxLvl="12" },
  { text="I then tame an Elder Nightsaber (42,42) as my pet. (still hunter quest)", minLvl="1", maxLvl="12" },
  { text="Run to Darnassus Hand in “Rellian Greenspyre” at 38,21 accept “Tumors”", minLvl="1", maxLvl="12" },
  { text="Go to 40,81 turn in “Training the Beast” (hunter quest again)", minLvl="1", maxLvl="12" },
  { text="Get “Nessa Shadowsong” at 70,45 in Darnassus", minLvl="1", maxLvl="12" },
  { text="Go south and do:", minLvl="1", maxLvl="12" },
  { text="Get “The Glowing Fruit” at 42,76", minLvl="1", maxLvl="12" },
  { text="Do “Ursal the Mauler” at 38,77", minLvl="1", maxLvl="12" },
  { text="Die so you’re in front of Darnassus.", minLvl="1", maxLvl="12" },
  { text="Do “Tumors” at 42,42", minLvl="1", maxLvl="12" },
  { text="Do “Crown of the Earth pt.5” at 38,34", minLvl="1", maxLvl="12" },
  { text="Accept “The Enchanted Glade” at 38,34. Then do it at 35,43. Turn it back in", minLvl="1", maxLvl="12" },
  { text="Accept “Teldrassil”", minLvl="1", maxLvl="12" },
  { text="Run back to Darnassus, turn in “Tumors” at 38,21 accept “Return to Denalan”", minLvl="1", maxLvl="12" },
  { text="Turn in “Teldrassil” atop the tower at 36,12 accept “Grove of the Ancients”", minLvl="1", maxLvl="12" },
  { text="Hearth to Dolanaar", minLvl="1", maxLvl="12" },
  { text="Hand in “Crown of the Earth pt.5” accept “Crown of the Earth pt.6”", minLvl="1", maxLvl="12" },
  { text="Turn in “Ursal the Mauler”", minLvl="1", maxLvl="12" },
  { text="Go SE to 60,68 Turn in “Return to Denalan” accept Oakenscowl elite", minLvl="1", maxLvl="12" },
  { text="Turn in “Glowing Fruit”", minLvl="1", maxLvl="12" },
  { text="Go kill Oakenscowl at 53,74. Turn it in at 60,68", minLvl="1", maxLvl="12" },
  { text="Run to Darnassus, if you’re not within 1100xp to 12 yet grind on harpies North of the Darnassus entrance.", minLvl="1", maxLvl="12" },
  { text="Turn in “Crown of the Earth pt.6” 34,8 in Darnassus", minLvl="1", maxLvl="12" },
  { text="Get skills and run through gate at 30,41", minLvl="1", maxLvl="12" },
  { text="Run straight ahead to 56,92, hand in “Nessa Shadowsong” accept “The Bounty of Teldrassil” go hand it in to the hippograph guy at 58,93 to get a free ride and start “Flight to Auberdine”", minLvl="1", maxLvl="12" },
  { text="You're now done with the night elf starting zone and can start doing Alliance Part 1", minLvl="1", maxLvl="12" },

}

function GrowingFlowers_Inst_Nightelfs:getFileID()
  return fileID
end

function GrowingFlowers_Inst_Nightelfs:getInstructions()
  return instructions
end

function GrowingFlowers_Inst_Nightelfs:getInstructionsTitle()
  return instructionsTitle
end

function GrowingFlowers_Inst_Nightelfs:getRace()
  return race
end
