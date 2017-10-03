
GrowingFlowers_Inst_Alliance_1 = {};

local fileID = 1

local instructionsTitle = "Alliance Part " .. fileID .. " - Level 12 to 17"

local race = "Alliance"

local instructions = {

  { text="Now you’re in Auberdine, do the following:", minLvl="12", maxLvl="17" },
  { text="Once you land grab “Washed Ashore pt.1” right in front of you", minLvl="12", maxLvl="17" },
  { text="Turn in “Flight to Auberdine” accept “Return to Nessa” I fly back to darnassus to get it done. She’s right off the edge of the dock.", minLvl="12", maxLvl="17" },
  { text="Run out on the docks of Auberdine grab “For Love Eternal” at 35,43", minLvl="12", maxLvl="17" },
  { text="Go upstairs accept “Buzzbox 827”", minLvl="12", maxLvl="17" },
  { text="Accept “Cave Mushrooms” in front of the Inn", minLvl="12", maxLvl="17" },
  { text="Grab “The Red Crystal” near the bridge", minLvl="12", maxLvl="17" },
  { text="Buy some 6 slot bags if you haven’t found 3 by now at 37,40 then grab “Bashal’Aran pt.1” and “Tools of the Highborne”", minLvl="12", maxLvl="17" },
  { text="I then get mining at 38,41", minLvl="12", maxLvl="17" },
  { text="Go south over the bridge, grab “Plagued Lands”", minLvl="12", maxLvl="17" },
  { text="Run inside, grab “How Big a Threat? pt.1”", minLvl="12", maxLvl="17" },
  { text="Go do “Washed Ashore pt.1” at 36,50 grind from town to there to get Crawler legs for “Buzzbox 827”", minLvl="12", maxLvl="17" },
  { text="Turn in “Buzzbox 827” at 36,46 accept “Buzzbox 411”", minLvl="12", maxLvl="17" },
  { text="Turn in “Washed Ashore pt.1” accept “Washed Ashore pt.2”", minLvl="12", maxLvl="17" },
  { text="Do “Washed Ashore pt.2” at 31,46 west of boat dock. Turn it in", minLvl="12", maxLvl="17" },
  { text="Go do:", minLvl="12", maxLvl="17" },
  { text="“Buzzbox 411” Threshers look like loch ness in the water, Turn it in at 41,28 accept “Buzzbox 323”", minLvl="12", maxLvl="17" },
  { text="Stop at 36,51 accept “Beached Sea Creature”", minLvl="12", maxLvl="17" },
  { text="“Bashal’Aran pt.1” at 44,36 grinding along the way, accept “Bashal’Aran pt.2” killing grells around him for earrings.", minLvl="12", maxLvl="17" },
  { text="Turn in “Bashal’Aran pt.2” at 44,36 accept “Bashal’Aran pt.3”", minLvl="12", maxLvl="17" },
  { text="Do “Bashal’Aran pt.3” by killing satyr’s and turn it in accept “Bashal’Aran pt.4”", minLvl="12", maxLvl="17" },
  { text="Grind to 47,48 and do “The Red Crystal”", minLvl="12", maxLvl="17" },
  { text="Grind to 40,53 to find the camp for “How Big a Threat? pt.1”", minLvl="12", maxLvl="17" },
  { text="Run down to Ameth’Aran at 40,59 and accept “The Fall of Ameth’Aran” do it at 43,58 and 42,63", minLvl="12", maxLvl="17" },
  { text="Do “Tools of the Highborne” while in here, killing mobs for them.", minLvl="12", maxLvl="17" },
  { text="Do “For Love Eternal” at 41,58 she’s lvl 16 but easy.", minLvl="12", maxLvl="17" },
  { text="Do “Bashal’Aran pt.4” at 42,61", minLvl="12", maxLvl="17" },
  { text="Turn in “The Fall of Ameth’Aran” at 40,59", minLvl="12", maxLvl="17" },
  { text="To the west of Amath’Aran do “Plagued Lands", minLvl="12", maxLvl="17" },
  { text="Hearth back to Auberdine along with your new bear friend =P", minLvl="12", maxLvl="17" },
  { text="Turn in “Plagued Lands” at the first house accept “Cleansing the Infected”", minLvl="12", maxLvl="17" },
  { text="Go inside hand in “How Big a Threat? pt.1” accept “How Big a Threat? Pt.2”", minLvl="12", maxLvl="17" },
  { text="Accept “Thundris Windweaver”", minLvl="12", maxLvl="17" },
  { text="Go Upstairs accept “The Tower of Althalaxx pt.1”", minLvl="12", maxLvl="17" },
  { text="Don’t do “Deep Ocean, Vast Sea” it’s not worth it and too hard", minLvl="12", maxLvl="17" },
  { text="Go in the merchant house, turn in “Tools of the Highborne”", minLvl="12", maxLvl="17" },
  { text="Turn in “Thundris Windweaver” accept “The Cliffspring River”", minLvl="12", maxLvl="17" },
  { text="Turn in “The Red Crystal” near the Inn accept “As Water Cascades”", minLvl="12", maxLvl="17" },
  { text="Fill the Vial in the Moonwell for “As Water Cascades”", minLvl="12", maxLvl="17" },
  { text="Accept “WANTED: Murkdeep!” in front of the Inn (lvl 15 quest now)", minLvl="12", maxLvl="17" },
  { text="Turn in “For Love Eternal” on the dock. Watch the love story", minLvl="12", maxLvl="17" },
  { text="You should be 14 by now get skills in Darnassus", minLvl="12", maxLvl="17" },
  { text="Turn in “Bashal’Aran pt.4” at 44,36", minLvl="12", maxLvl="17" },
  { text="Kill Moonstalkers and Rabid Thistle Bears all around 48,30 while you head to 50,25 for “The Cliffspring River”", minLvl="12", maxLvl="17" },
  { text="Accept “Beached Sea Turtle” at 44,20", minLvl="12", maxLvl="17" },
  { text="Turn in “Buzzbox 323” at 51,24 accept “Buzzbox 525”", minLvl="12", maxLvl="17" },
  { text="Go to 54,32 and do “Cave Mushrooms”", minLvl="12", maxLvl="17" },
  { text="Head south stopping at 47,48 to do “As Water Cascades” accept “The Fragments Within”", minLvl="12", maxLvl="17" },
  { text="Grind to 40,53 and do “How Big a Threat? Pt.2”", minLvl="12", maxLvl="17" },
  { text="Stop at 37,62 and grab “Beached Sea Turtle”", minLvl="12", maxLvl="17" },
  { text="Follow the shore and “Beached Sea Creature” at 36,70", minLvl="12", maxLvl="17" },
  { text="Turn in “Grove of the Ancients” at 43,76", minLvl="12", maxLvl="17" },
  { text="Kill Grizzled Thistle Bear South of Grove of the Ancients for “Buzzbox 525” then turn it in at 41,80", minLvl="12", maxLvl="17" },
  { text="Stop at 35,74 and do “WANTED: Murkdeep!” you have to clear the camp, then the 2 waves from the ocean, then he comes. He’s lvl 19 If you have trouble with him just kite him.", minLvl="12", maxLvl="17" },
  { text="Grind over to 32,80 and get “Beached Sea Creature”", minLvl="12", maxLvl="17" },
  { text="Hearth back to Auberdine and turn in:", minLvl="12", maxLvl="17" },
  { text="Turn in all beached creature quests at the hippograph dock", minLvl="12", maxLvl="17" },
  { text="Go under the dock grab “Fruit of the Sea”", minLvl="12", maxLvl="17" },
  { text="Turn in “Cave Mushrooms” in front of the Inn Accept “Onu”", minLvl="12", maxLvl="17" },
  { text="Turn in “The Fragments Within” in front of the Inn", minLvl="12", maxLvl="17" },
  { text="Accept “The Absent Minded Prospector” at 37,41", minLvl="12", maxLvl="17" },
  { text="Go to the merchant house turn in “The Cliffspring River”", minLvl="12", maxLvl="17" },
  { text="You should be 15 by now so you can accept: “The Blackwood Corrupted”", minLvl="12", maxLvl="17" },
  { text="“Cleansing the Infected” at the first house accept “Tharnariun’s Hope”", minLvl="12", maxLvl="17" },
  { text="Turn in “How Big a Threat? Pt.2” accept “A Lost Master”", minLvl="12", maxLvl="17" },
  { text="Fill the Cleansing Bowl at the Moonwell", minLvl="12", maxLvl="17" },
  { text="You should be 16 now, fly to Darnassus get new skills.", minLvl="12", maxLvl="17" },
  { text="Do “The Blackwood Corrupted” at 50,34(grains) clear b4 all 3 pick ups or the spawn will give adds. If so just run.", minLvl="12", maxLvl="17" },
  { text="Go do “Tharnariun’s Hope” at 51,37 (den mother) If you can’t kill her with the lvl 9 adds, kill them off and run till she’s alone. Immolate trap her and shoot first so you get the adds, not the pet.", minLvl="12", maxLvl="17" },
  { text="Do “The Blackwood Corrupted” 51,33(nuts) 52,33(fruit)", minLvl="12", maxLvl="17" },
  { text="Clear around the Bonfire at 52,33 place the food. Don’t worry they turn good.When Xabraxxis appears kill him. Talisman falls beside.", minLvl="12", maxLvl="17" },
  { text="Go to 54,24 turn in “The Tower of Althalaxx pt.1” Accept “The Tower of Althalaxx pt.2” do it. Kill any mob around the tower, NOT in it", minLvl="12", maxLvl="17" },
  { text="Hand in “The Tower of Althalaxx pt.2” accept “The Tower of Althalaxx pt.3”", minLvl="12", maxLvl="17" },
  { text="Run to 53,18 and grab “Beached Sea Creature”", minLvl="12", maxLvl="17" },
  { text="Do “Fruit of the Sea” from crawlers around here.", minLvl="12", maxLvl="17" }

}

function GrowingFlowers_Inst_Alliance_1:getInstructions()
  return instructions
end

function GrowingFlowers_Inst_Alliance_1:getInstructionsTitle()
  return instructionsTitle
end

function GrowingFlowers_Inst_Alliance_1:getRace()
  return race
end
