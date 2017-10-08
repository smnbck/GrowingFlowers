
GrowingFlowers_FileManager = {};

local activeFaction = "horde"

local allianceFiles = {
  -- id_'id' = 'filename'
  id_1 = GrowingFlowers_Inst_Alliance_1,
  id_2 = GrowingFlowers_Inst_Alliance_2,
  id_3 = GrowingFlowers_Inst_Alliance_3,
  id_201 = GrowingFlowers_Inst_Nightelfs,
  id_202 = GrowingFlowers_Inst_Humans
}

local hordeFiles = {

}

function GrowingFlowers_FileManager:setActiveFaction(faction)
  activeFaction = faction
end

-- you need to pass the actual id (eg. for id_1 a 1)
function GrowingFlowers_FileManager:getFileWithID(idString)
  local file = GrowingFlowers_FileManager:getAllFiles()[idString]
  return file
end

-- you can use this function to iterate through it with an index
function GrowingFlowers_FileManager:getFileWithIndex(index)
  local file = GrowingFlowers_FileManager:getAllFiles()[index]
  return file
end

function GrowingFlowers_FileManager:getAllFiles()
  if activeFaction == "alliance" then
    return allianceFiles
  else
    return hordeFiles
  end
end
