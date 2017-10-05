
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

local settingsContainerFrame
local settingsScrollFrame
local settingsScrollBar
local settingsScrollChild
local instructionSelectionButtons = {}


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
  -- instructionsFile = GrowingFlowers_FileManager:getFileWithID(2) just for having fun while this shit is not finished


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
  --parent frame
  settingsContainerFrame = CreateFrame("Frame", "SettingsContainerFrame", GrowingFlowers_Frame)
  settingsContainerFrame:Hide()
  settingsContainerFrame:SetPoint("TOPLEFT", 0, -24)
  settingsContainerFrame:SetPoint("BOTTOMRIGHT", 0, 0)
  local texture = settingsContainerFrame:CreateTexture()
  texture:SetAllPoints()
  texture:SetTexture(1,1,1,1)
  settingsContainerFrame.background = texture

  --scrollframe
  settingsScrollFrame = CreateFrame("ScrollFrame", nil, settingsContainerFrame)
  settingsScrollFrame:SetPoint("TOPLEFT", 0, 0)
  settingsScrollFrame:SetPoint("BOTTOMRIGHT", -16, 0)
  local texture = settingsScrollFrame:CreateTexture()
  texture:SetAllPoints()
  texture:SetTexture(.5,.5,.5,1)
  settingsContainerFrame.scrollframe = settingsScrollFrame

  --scrollbar
  settingsScrollBar = CreateFrame("Slider", nil, settingsScrollFrame, "UIPanelScrollBarTemplate")
  settingsScrollBar:SetPoint("TOPLEFT", settingsContainerFrame, "TOPRIGHT", -16, -16)
  settingsScrollBar:SetPoint("BOTTOMLEFT", settingsContainerFrame, "BOTTOMRIGHT", -16, 16)
  settingsScrollBar:SetMinMaxValues(1, 200)
  settingsScrollBar:SetValueStep(1)
  settingsScrollBar.scrollStep = 1
  settingsScrollBar:SetValue(0)
  settingsScrollBar:SetWidth(16)
  settingsScrollBar:SetScript("OnValueChanged",
    function (self, value)
      settingsScrollFrame:SetVerticalScroll(settingsScrollBar:GetValue())
      DEFAULT_CHAT_FRAME:AddMessage("scrolled" .. settingsScrollBar:GetValue())
    end
  )
  local scrollbg = settingsScrollBar:CreateTexture(nil, "BACKGROUND")
  scrollbg:SetAllPoints(settingsScrollBar)
  scrollbg:SetTexture(0, 0, 0, 0.4)
  settingsContainerFrame.scrollbar = settingsScrollBar

  --content frame
  settingsScrollChild = CreateFrame("Frame", nil, settingsScrollFrame)
  settingsScrollChild:SetHeight(400)
  settingsScrollChild:SetWidth(128)
  local texture = settingsScrollChild:CreateTexture()
  texture:SetAllPoints()
  texture:SetTexture(1,1,1,1)
  settingsScrollChild.texture = texture
  settingsScrollFrame.content = settingsScrollChild

  settingsScrollFrame:SetScrollChild(settingsScrollChild)
end

function scroll()

end

function GrowingFlowers:generateInstructionSelectionRows()
  local files = GrowingFlowers_FileManager:getAllFiles()
  for i, file in files do
    GrowingFlowers:addInstructionSelectionButton(i)
  end
end

function GrowingFlowers:addInstructionSelectionButton(index)
  DEFAULT_CHAT_FRAME:AddMessage("GrowingFlowers loaded! File ID = " .. currentInstructionFileID .. ", Instruction ID = " .. currentInstructionID);
  buttonName = "InstructionSelectionButton" .. index
  local selectionButton = CreateFrame("Button", buttonName, Settings_ScrollFrame)
  selectionButton:SetPoint("TOP", 0, -8)
	selectionButton:SetPoint("RIGHT", -8, 0)
  selectionButton:SetPoint("LEFT", 8, 0)
	selectionButton:SetHeight(20)

	selectionButton:SetText("TEST " .. index)
  selectionButton:SetFont("Fonts\\ARIALN.TTF", 12)

  selectionButton:SetScript("OnClick", function(self, arg1)
    GrowingFlowers:switchInstructionButtonPressed("next")
  end)

  instructionSelectionButtons[buttonName] = selectionButton
end

function GrowingFlowers:InstructionSelectionButtonPressed()

end

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
      settingsContainerFrame:Hide()
    else
      levelRangeText:SetText("Settings")
      settingsContainerFrame:Show()
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
