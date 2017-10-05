
GrowingFlowers_FileManager = {};

local files = {
  -- id_'id' = 'filename'
  id_1 = GrowingFlowers_Inst_Alliance_1,
  id_2 = GrowingFlowers_Inst_Alliance_2,
  id_3 = GrowingFlowers_Inst_Alliance_3,
  id_201 = GrowingFlowers_Inst_Nightelfs
}

-- you need to pass the actual id (eg. for id_1 a 1)
function GrowingFlowers_FileManager:getFileWithID(idString)
  -- local fileID = "id_" .. id
  -- local file = files[fileID]
  local file = files[idString]
  return file
end

-- you can use this function to iterate through it with an index
function GrowingFlowers_FileManager:getFileWithIndex(index)
  local file = files[index]
  return file
end

function GrowingFlowers_FileManager:getAllFiles()
  return files
end
