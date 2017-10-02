GrowingFlowers = {};

local instructions = {}
local previousButton
local nextButton
local currentInstructionID = 1
local GrowingFlowers_Frame

function GrowingFlowers:registerEvents()
  GrowingFlowers_Frame = getglobal("GrowingFlowers_Frame")
  GrowingFlowers_Frame:RegisterEvent("ADDON_LOADED")
  GrowingFlowers_Frame:RegisterEvent("PLAYER_LOGOUT");
end

function GrowingFlowers:OnEvent(event)
	if (event == "ADDON_LOADED") then

    if gfCurrentInstructionID == nil then
      gfCurrentInstructionID = 1;
    end

    currentInstructionID = gfCurrentInstructionID
    GrowingFlowers:setInstructionTexts()
    DEFAULT_CHAT_FRAME:AddMessage("GrowingFlowers loaded! Current ID is " .. currentInstructionID);

  elseif (event == "PLAYER_LOGOUT") then
    gfCurrentInstructionID = currentInstructionID
  end
end

function GrowingFlowers:configureTexts()
  local lvlRangeText = getglobal("GrowingFlowers_LevelRange")

  local previousInstructionText = getglobal("GrowingFlowers_PreviousInstruction")
  local currentInstructionText = getglobal("GrowingFlowers_CurrentInstruction")
  local nextInstructionText = getglobal("GrowingFlowers_NextInstruction")

  local previousButtonText = getglobal("GrowingFlowers_PreviousButton")
  local nextButtonText = getglobal("GrowingFlowers_NextButton")

  texts = {lvlRangeText, previousInstructionText, currentInstructionText, nextInstructionText}

  for i, text in ipairs(texts) do
    text:SetFontObject(GameFontWhite);
    text:SetFont("Fonts\\ARIALN.TTF", 12)
  end

  lvlRangeText:SetFont("Fonts\\ARIALN.TTF", 12)
  previousInstructionText:SetTextColor(1, 1, 1, 0.5)
  nextInstructionText:SetTextColor(1, 1, 1, 0.5)
  currentInstructionText:SetTextColor(1, 0.76, 0.24, 1)
end

function GrowingFlowers:setInstructionTexts()
  -- check if instructionID has allready a save state
  instructions = GrowingFlowers_InstructionsAlliance:getInstructions()
  GrowingFlowers:switchInstructionButtonPressed("none")
end

function GrowingFlowers:switchInstructionButtonPressed(direction)

  if direction == "previous" then
    currentInstructionID = currentInstructionID - 1
  elseif direction == "next" then
    currentInstructionID = currentInstructionID + 1
  end

  local previousInstructionText = getglobal("GrowingFlowers_PreviousInstruction")
  local currentInstructionText = getglobal("GrowingFlowers_CurrentInstruction")
  local nextInstructionText = getglobal("GrowingFlowers_NextInstruction")

  if instructions[currentInstructionID-1] ~= nil then
    previousInstructionText:SetText(instructions[currentInstructionID-1].text)
    previousButton:SetAlpha(1)
    previousButton:Enable()
  else
    previousInstructionText:SetText("")
    previousButton:SetAlpha(0.3)
    previousButton:Disable()
  end

  if instructions[currentInstructionID] ~= nil then
    currentInstructionText:SetText(instructions[currentInstructionID].text)
  else
    currentInstructionText:SetText("")
  end

  if instructions[currentInstructionID+1] ~= nil then
    nextInstructionText:SetText(instructions[currentInstructionID+1].text)
    nextButton:SetAlpha(1)
    nextButton:Enable()
   else
    nextInstructionText:SetText("")
    nextButton:SetAlpha(0.3)
    nextButton:Disable()
  end

  local levelRangeText = getglobal("GrowingFlowers_LevelRange")
  local faction = "Alliance"
  local race = "Nightelfs"
  levelRangeText:SetText(faction .. " - " .. race .. ": Level "
  .. instructions[currentInstructionID].minLvl .. " to " .. instructions[currentInstructionID].maxLvl)
end

function GrowingFlowers:addPreviousButton()
  previousButton = CreateFrame("Button", GrowingFlowers_PreviousButton, GrowingFlowers_Frame)
	previousButton:SetPoint("LEFT", 8, 0)
  previousButton:SetPoint("BOTTOM", 0, 2)
	previousButton:SetWidth(48)
	previousButton:SetHeight(20)

	previousButton:SetText("< Previous")
  previousButton:SetFont("Fonts\\ARIALN.TTF", 12)

  previousButton:SetScript("OnClick", function(self, arg1)
    GrowingFlowers:switchInstructionButtonPressed("previous")
  end)
end

function GrowingFlowers:addNextButton()
  nextButton = CreateFrame("Button", GrowingFlowers_NextButton, GrowingFlowers_Frame)
	nextButton:SetPoint("RIGHT", -8, 0)
  nextButton:SetPoint("BOTTOM", 0, 2)
	nextButton:SetWidth(40)
	nextButton:SetHeight(20)

	nextButton:SetText("Next >")
  nextButton:SetFont("Fonts\\ARIALN.TTF", 12)

  nextButton:SetScript("OnClick", function(self, arg1)
    GrowingFlowers:switchInstructionButtonPressed("next")
  end)
end

local function toggleFrame()
  local frame = getglobal("GrowingFlowers_Frame")
  if frame:IsShown() then
    frame:Hide()
  else
    frame:Show()
  end
end

function GrowingFlowers:registerSlashCommands()
  SLASH_GROWINGFLOWERS1, SLASH_GROWINGFLOWERS2 = '/gftoggle', '/GrowingFlowerstoggle'
  function SlashCmdList.GROWINGFLOWERS(msg, editbox)
   toggleFrame()
  end
end
