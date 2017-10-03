
GrowingFlowers_Inst_Alliance_Nightelf = {};

local instructionsTitle = "Alliance Global - Level 17 to 21"

local instructions = {
  { text="Hearth back to Auberdine (if you’re not 17 yet you will be) turn in:", minLvl="17", maxLvl="17" },
  { text="“Beached Sea Creature” on the dock", minLvl="17", maxLvl="17" },
  { text="Turn in “Fruit of the Sea” under the dock", minLvl="17", maxLvl="17" },
  { text="Turn in “The Blackwood Corrupted” in the merchant house", minLvl="17", maxLvl="17" },
  { text="Turn in “Tharnariun’s Hope” at the last house", minLvl="17", maxLvl="17" },
  { text="Get on boat to Menethil Harbor. Follow attached run to IF.", minLvl="17", maxLvl="17" },
  { text="Stop right in Loch Modan tower at 24,18 and accept “Filthy Paws” and “Stormpike’s Order”", minLvl="17", maxLvl="18" },
  { text="Run in the Cave at 35,18 and do “Filthy Paws” Boxes are on the ground. Then turn it back in at 24,18", minLvl="17", maxLvl="18" },
  { text="Arrive at Thelsamar get Flight Point at 33,50", minLvl="17", maxLvl="18" },
  { text="Grab “Ironband’s Excavation” in the last house on the right.", minLvl="17", maxLvl="18" },
  { text="Turn in “Ironband’s Excavation” at 64,66 Accept “Gathering Idols”", minLvl="17", maxLvl="18" },
  { text="Grab “Excavation Progress Report” at 65,65", minLvl="17", maxLvl="18" },
  { text="Do “Gathering Idols” behind here then turn it back in.", minLvl="17", maxLvl="18" },
  { text="Go behind the excavation site to the house at 82,62. If you’re 18 now or close get hunter skills.", minLvl="17", maxLvl="18" },
  { text="Turn right when you enter and get “Crocolisk Hunting” (behind hunter trainer) then go to the other side and grab “A Hunter’s Boast”", minLvl="17", maxLvl="18" },
  { text="Go do “A Hunter’s Boast” birds in front of the house.", minLvl="17", maxLvl="18" },
  { text="Turn in “A Hunter’s Boast” accept “A Hunter’s Challenge” do it,mobs are around 75,41.", minLvl="17", maxLvl="18" },
  { text="Turn in “A Hunter’s Challenge” Accept “Vyrin’s Revenge pt.1”", minLvl="17", maxLvl="18" },
  { text="Go to 63,47 and accept “Bingles’ Missing Supplies”", minLvl="17", maxLvl="18" },
  { text="Do “Crocolisk Hunting” here on the shore and the island at 54,38", minLvl="17", maxLvl="18" },
  { text="Grab all the parts for “Bingles’ Missing Supplies” at (54,27 blastencapper), (48,30 wrench), (51,23 hammer), (48,20 screwdriver)", minLvl="17", maxLvl="18" },
  { text="Run up to the dam from the west side and accept “A Dark Threat Looms pt.1” at 45,13 then run out the east entrance and turn it in on the barrel guarded by 2 sappers accept “A Dark Threat Looms pt.2”", minLvl="17", maxLvl="18" },
  { text="Turn in “A Dark Threat Looms pt.2” at 45,13", minLvl="17", maxLvl="18" },
  { text="Run down the west coast Turn in “Excavation Progress Report” in Thelsamar, accept “Report to Ironforge”", minLvl="17", maxLvl="18" },
  { text="Go to 38,61 and do “Vyrin’s Revenge pt.1” use Immolation trap and fear.", minLvl="17", maxLvl="18" },
  { text="Run back to the house at 83,62 turn in “Crocolisk Hunting” and “Vyrin’s Revenge pt.1” accept “Wyrin’s Revenge pt.2”", minLvl="17", maxLvl="18" },
  { text="Turn in “Wyrin’s Revenge pt.2” behind you.", minLvl="17", maxLvl="18" },
  { text="Go to 63,47 Turn in “Bingles’ Missing Supplies”", minLvl="17", maxLvl="18" },
  { text="Run down to 22,70 and follow the path North into Dun Morogh", minLvl="17", maxLvl="18" },
  { text="Run along the road to IronForge at 53,35", minLvl="17", maxLvl="18" },
  { text="Get IF weapon training at 61,89 Get Flight Path at 55,38 inside then turn in “Report to Ironforge” at 74,12 skip “Powder to Ironband”", minLvl="17", maxLvl="18" },
  { text="Get on the tram at 76,51", minLvl="17", maxLvl="18" },
  { text="Turn in “Stormpike’s Order” at 58,16 in Stormwind", minLvl="17", maxLvl="18" },
  { text="Get SW weapons training at 57,57 and FP at 66,62", minLvl="17", maxLvl="18" },
  { text="Run towards 91,73 in Elwynn Forest and enter Redridge Mtns", minLvl="17", maxLvl="18" },
  { text="Accept “Encroaching Gnolls” from the patrol around 15,71", minLvl="18", maxLvl="20" },
  { text="Turn in “Encroaching Gnolls” at 30,60 Accept “Assessing the Threat”", minLvl="18", maxLvl="20" },
  { text="Get Flight Point", minLvl="18", maxLvl="20" },
  { text="Cross the bridge, on the right accept “Blackrock Menace” on the left accept “The Lost Tools”", minLvl="18", maxLvl="20" },
  { text="SKIP “Elmore’s Task” SKIP “The Price of Shoes”", minLvl="18", maxLvl="20" },
  { text="Accept “Hilary’s Necklace” on the dock", minLvl="18", maxLvl="20" },
  { text="Accept “Selling Fish” near the shed out front", minLvl="18", maxLvl="20" },
  { text="Go in the Inn and accept “A Free Lunch”, SKIP “Dry Times”", minLvl="18", maxLvl="20" },
  { text="Go west of Lakeshire and accept “Redridge Goulash”", minLvl="18", maxLvl="20" },
  { text="Get Great Goretusk Snouts just west of the houses (watch out for bellygrub we’ll get him later) for “Redridge Goulash”", minLvl="18", maxLvl="20" },
  { text="Then head toward 41,54 to do “The Lost Tools” and do “Selling Fish” by killing murlocs, keep an eye out for a glinting mud pile underwater for “Hilary’s Necklace” Save at least 8 murloc fins for a later quest", minLvl="18", maxLvl="20" },
  { text="Turn in “The Lost Tools” by the bridge accept “The Everstill Bridge”", minLvl="18", maxLvl="20" },
  { text="Turn in “Hilary’s Necklace” on the dock", minLvl="18", maxLvl="20" },
  { text="Turn in “Selling Fish” by the shed in front of the houses.", minLvl="18", maxLvl="20" },
  { text="You should be half way to 20 at this point.", minLvl="18", maxLvl="20" },
  { text="Turn in “A Free Lunch” around 14,70 accept “Visit the Herbalist”", minLvl="18", maxLvl="20" },
  { text="Kill spiders for “Redridge Goulash” between 14,70 and 29,83", minLvl="18", maxLvl="20" },
  { text="Do “Assessing the Threat” at 29,83 and 41,73", minLvl="18", maxLvl="20" },
  { text="Kill condors for “Redridge Goulash” around 57,73", minLvl="18", maxLvl="20" },
  { text="Turn in “Assessing the Threat” near the FP", minLvl="18", maxLvl="20" },
  { text="Accept “Murloc Poachers” in front of the shed.", minLvl="18", maxLvl="20" },
  { text="Stop at the house just west of Lakeshire, turn in “Visit the Herbalist” accept “Delivering Daffodils”", minLvl="18", maxLvl="20" },
  { text="Go to the next house, turn in “Redridge Goulash”", minLvl="18", maxLvl="20" },
  { text="Go in the Inn and turn in “Delivering Daffodils”", minLvl="18", maxLvl="20" },
  { text="Kill Murlocs east of the bridge for “Murloc Poachers”", minLvl="18", maxLvl="20" },
  { text="Kill Gnolls north of Lakeshire for “The Everstill Bridge”", minLvl="18", maxLvl="20" },
  { text="Turn in “The Everstill Bridge” next to the Bridge", minLvl="18", maxLvl="20" },
  { text="Turn in “Murloc Poachers” in front of the shed.", minLvl="18", maxLvl="20" },
  { text="Hearth back to Auberdine. You should definitely be 20 by this point and at least half way to 21", minLvl="18", maxLvl="20" },
  { text="First thing, fly to Darnassus and get your new Skills", minLvl="20", maxLvl="21" },
  { text="Turn in “Onu” at 43,76 accept “The Master’s Glaive”", minLvl="20", maxLvl="21" },
  { text="Go to 39,85 it should say you found Master’s Glaive(complete) now use the phial of scrying. Click it turn in “The Master’s Glaive” accept “The Twilight Camp”", minLvl="20", maxLvl="21" },
  { text="Click the Book at 38,86 turn in “The Twilight Camp” accept “Return to Onu”", minLvl="20", maxLvl="21" },
  { text="Accept “Therylune’s Escape” (escort) at 38,87 and do it.", minLvl="20", maxLvl="21" },
  { text="Turn in “The Absent Minded Prospector pt.1” at 35,83 accept “The Absent Minded Prospector pt.2” and do it.", minLvl="20", maxLvl="21" }

}

function GrowingFlowers_Inst_Alliance_Nightelf:getInstructions()
  return instructions
end

function GrowingFlowers_Inst_Alliance_Nightelf:getInstructionsTitle()
  return instructionsTitle
end
