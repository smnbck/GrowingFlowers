
GrowingFlowers_FileManager = {};

local files = {
  -- id_'id' = 'filename'
  id_1 = GrowingFlowers_Inst_Alliance_1,
  id_2 = GrowingFlowers_Inst_Alliance_2,
  id_3 = GrowingFlowers_Inst_Alliance_3,
  id_201 = GrowingFlowers_Inst_Nightelfs
}


function GrowingFlowers_FileManager:getFileWithID(id)
  local fileID = "id_" .. id
  local file = files[fileID]
  return file
end

function GrowingFlowers_FileManager:getAllFiles()
  return files
end
