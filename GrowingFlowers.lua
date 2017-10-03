
-- Stored Properties
GrowingFlowers = {};

local GrowingFlowers_Frame
local currentInstructionID = 1
local currentInstructionFileID = 1
local instructionsFile
local instructions = {}
local instructionsTitle = ""

local settingsButton
local closeButton
local previousButton
local nextButton

local settingsScrollFrame


-- Functions
function GrowingFlowers:registerEvents()
  GrowingFlowers_Frame = getglobal("GrowingFlowers_Frame")
  GrowingFlowers_Frame:RegisterEvent("ADDON_LOADED")
  GrowingFlowers_Frame:RegisterEvent("PLAYER_LOGOUT");
end

function GrowingFlowers:OnEvent(this, event, arg1)
	if (arg1 == "GrowingFlowers" and event == "ADDON_LOADED") then
    if gfCurrentInstructionID == nil then
      gfCurrentInstructionID = 1;
    end

    if gfCurrentInstructionFileID == nil then
      gfCurrentInstructionFileID = 1;
    end

    currentInstructionID = gfCurrentInstructionID
    currentInstructionFileID = gfCurrentInstructionFileID

    GrowingFlowers:init()

    DEFAULT_CHAT_FRAME:AddMessage("GrowingFlowers loaded! File ID = " .. currentInstructionFileID .. ", Instruction ID = " .. currentInstructionID);

  elseif (event == "PLAYER_LOGOUT") then
    gfCurrentInstructionID = currentInstructionID
    gfCurrentInstructionFileID = xurrentInstructionFileID
  end
end


-- Initializer Function
function GrowingFlowers:init()
  GrowingFlowers:addSettingsButton();
  GrowingFlowers:addCloseButton();

  GrowingFlowers:addPreviousButton();
  GrowingFlowers:addNextButton();

  GrowingFlowers:addSettingsScrollFrame()

  GrowingFlowers:configureTexts()

  GrowingFlowers:initInstructionTexts()

  GrowingFlowers:registerSlashCommands()
end


-- Every function called in GrowingFlowers:init()
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

function GrowingFlowers:initInstructionTexts()

  instructionsFile = GrowingFlowers_FileManager:getFileWithID(gfCurrentInstructionFileID)
  instructionsFile = GrowingFlowers_FileManager:getFileWithID(201)

  instructions = instructionsFile:getInstructions()
  GrowingFlowers:switchInstructionButtonPressed("none")
end

function GrowingFlowers:addSettingsButton()
  settingsButton = CreateFrame("Button", GrowingFlowers_settingsButton, GrowingFlowers_Frame)
	settingsButton:SetPoint("LEFT", 8, 0)
  settingsButton:SetPoint("TOP", 0, -7)
	settingsButton:SetWidth(10)
	settingsButton:SetHeight(10)

  settingsButton:SetNormalTexture("Interface\\AddOns\\GrowingFlowers\\img\\settings_icon_white")
  settingsButton:SetHighlightTexture("Interface\\AddOns\\GrowingFlowers\\img\\settings_icon_white")
  settingsButton:SetPushedTexture("Interface\\AddOns\\GrowingFlowers\\img\\settings_icon_white")

  settingsButton:SetFont("Fonts\\ARIALN.TTF", 12)

  settingsButton:SetScript("OnClick", function(self, arg1)
    GrowingFlowers:toggleSettings()
  end)
end

function GrowingFlowers:addCloseButton()
  closeButton = CreateFrame("Button", GrowingFlowers_closeButton, GrowingFlowers_Frame)
	closeButton:SetPoint("RIGHT", -8, 0)
  closeButton:SetPoint("TOP", 0, -8)
	closeButton:SetWidth(8)
	closeButton:SetHeight(8)

  closeButton:SetNormalTexture("Interface\\AddOns\\GrowingFlowers\\img\\close_icon_white")
  closeButton:SetHighlightTexture("Interface\\AddOns\\GrowingFlowers\\img\\close_icon_white")
  closeButton:SetPushedTexture("Interface\\AddOns\\GrowingFlowers\\img\\close_icon_white")

  closeButton:SetFont("Fonts\\ARIALN.TTF", 12)

  closeButton:SetScript("OnClick", function(self, arg1)
    GrowingFlowers:toggleFrame()
  end)
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

function GrowingFlowers:addSettingsScrollFrame()
  settingsScrollFrame = CreateFrame("ScrollFrame", Settings_ScrollFrame, GrowingFlowers_Frame)
  settingsScrollFrame:Hide()
  settingsScrollFrame:SetPoint("LEFT", 0, 0)
  settingsScrollFrame:SetPoint("RIGHT", 0, 0)
  settingsScrollFrame:SetPoint("BOTTOM", 0, 0)
	settingsScrollFrame:SetHeight(236)

  local texture = settingsScrollFrame:CreateTexture()
  texture:SetAllPoints()
  texture:SetTexture(1,1,1,1)
  settingsScrollFrame.background = texture

  -- generateInstructionSelectionRows()
end

-- local function generateInstructionSelectionRows()
--   local files = GrowingFlowers_FileManager:getAllFiles()
-- end

function GrowingFlowers:addSelectInstructionsButton()
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

function GrowingFlowers:registerSlashCommands()
  SLASH_GROWINGFLOWERS1, SLASH_GROWINGFLOWERS2 = '/gftoggle', '/GrowingFlowerstoggle'
  function SlashCmdList.GROWINGFLOWERS(msg, editbox)
    GrowingFlowers:toggleFrame()
  end
end


-- Button Functions
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
  local race = instructionsFile:getRace()
  instructionsTitle = race .. " - Level " .. instructions[currentInstructionID].minLvl .. " to " .. instructions[currentInstructionID].maxLvl
  levelRangeText:SetText(instructionsTitle)
end

function GrowingFlowers:toggleSettings()
  local levelRangeText = getglobal("GrowingFlowers_LevelRange")
  local bottomBar = getglobal("GrowingFlowers_BottomBar")
  local previousInstructionText = getglobal("GrowingFlowers_PreviousInstruction")
  local currentInstructionText = getglobal("GrowingFlowers_CurrentInstruction")
  local nextInstructionText = getglobal("GrowingFlowers_NextInstruction")
  buttons = {nextButton,
    previousButton,
    bottomBar,
    previousInstructionText,
    currentInstructionText,
    nextInstructionText}

    if levelRangeText:GetText() == "Settings" then
      levelRangeText:SetText(instructionsTitle)
      settingsScrollFrame:Hide()
    else
      levelRangeText:SetText("Settings")
      settingsScrollFrame:Show()
    end

    for i, button in buttons do
      if button:IsShown() then
        button:Hide()
      else
        button:Show()
      end
    end
end

function GrowingFlowers:toggleFrame()
  local frame = getglobal("GrowingFlowers_Frame")
  if frame:IsShown() then
    frame:Hide()
  else
    frame:Show()
  end
end
