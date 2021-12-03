MAB = {}

MAB = {
    appName = "MysticActionBar",
    color = {
        colMagic = "|c2dc50e", -- Magic Green (Uncommon)
        colTrash = "|c777777", -- Trash Gray (Garbage)
        colYellow = "|cFFFF00", --yellow
        colArcane = "|c3689ef", -- Arcane Blue (Rare)
        colArtifact = "|c912be1", -- Epic (Epic)
        colTeal = "|c00FFFF", -- teal
        colWhite = "|cFFFFFF", -- white
        colRed = "|cFF0000", -- Red
        colLegendary = "|cd5b526", -- Legendary Gold (TheShit)
        colGreen = "|c00FF00" --green
    }
}

local function locker()
  -- TODO
  -- btns = [ActionButton3, ActionButton4]
  -- for btn in btns { btn:SetMovable(false)}
    btnActionBarUnlockTex:SetHidden(true)
    btnActionBarlockTex:SetHidden(false)
    ------ #3
    ActionButton3:SetMovable(false)
    ActionButton3:SetMouseEnabled(true)
    ActionButton3Button:SetMouseEnabled(true)
    ActionButton3ButtonText:SetMovable(false)
    ActionButton3ButtonText:SetMouseEnabled(false)
    ------ #4
    ActionButton4:SetMovable(false)
    ActionButton4:SetMouseEnabled(true)
    ActionButton4Button:SetMouseEnabled(true)
    ------ #5
    ActionButton5:SetMovable(false)
    ActionButton5:SetMouseEnabled(true)
    ActionButton5Button:SetMouseEnabled(true)
    ----- #6
    ActionButton6:SetMovable(false)
    ActionButton6:SetMouseEnabled(true)
    ActionButton6Button:SetMouseEnabled(true)
    ------ #7
    ActionButton7:SetMovable(false)
    ActionButton7:SetMouseEnabled(true)
    ActionButton7Button:SetMouseEnabled(true)
    --- - #8
    ActionButton8:SetMovable(false)
    ActionButton8:SetMouseEnabled(true)
    ActionButton8Button:SetMouseEnabled(true)
    ------ #9 which is actually 1
    ActionButton9:SetMovable(false)
    ActionButton9:SetMouseEnabled(true)
    ActionButton9Button:SetMouseEnabled(true)

    ZO_ActionBar1WeaponSwap:SetMovable(false)
    ZO_ActionBar1WeaponSwap:SetMouseEnabled(true)
	
	
	
	
	
	-- this part was originally direct after the locker function.. i placed it here to make /mab lock actually saving position into var
	MABSV.ABBG_WIDTH = ZO_ActionBar1KeybindBG:GetWidth()
    MABSV.ABBG_HEIGHT = ZO_ActionBar1KeybindBG:GetHeight()
    MABSV.ABBGX = ZO_ActionBar1KeybindBG:GetLeft()
    MABSV.ABBGY = ZO_ActionBar1KeybindBG:GetTop()
    MABSV.AB3X = math.floor(ActionButton3:GetLeft())
    MABSV.AB3Y = math.floor(ActionButton3:GetTop())
    MABSV.AB4X = math.floor(ActionButton4:GetLeft())
    MABSV.AB4Y = math.floor(ActionButton4:GetTop())
    MABSV.AB5X = math.floor(ActionButton5:GetLeft())
    MABSV.AB5Y = math.floor(ActionButton5:GetTop())
    MABSV.AB6X = math.floor(ActionButton6:GetLeft())
    MABSV.AB6Y = math.floor(ActionButton6:GetTop())
    MABSV.AB7X = math.floor(ActionButton7:GetLeft())
    MABSV.AB7Y = math.floor(ActionButton7:GetTop())
    MABSV.AB8X = math.floor(ActionButton8:GetLeft())
    MABSV.AB8Y = math.floor(ActionButton8:GetTop())
    MABSV.AB9X = math.floor(ActionButton9:GetLeft())
    MABSV.AB9Y = math.floor(ActionButton9:GetTop())
    MABSV.AB10X = math.floor(ZO_ActionBar1WeaponSwap:GetLeft())
    MABSV.AB10Y = math.floor(ZO_ActionBar1WeaponSwap:GetTop())
    MABSV.UnlockX = math.floor(btnActionBarUnlockTex:GetLeft())
     MABSV.UnlockY = math.floor(btnActionBarUnlockTex:GetTop())
		
	if MABSV.HideKey then-------------------------added by mystic-----------------
		btnActionBarUnlockTex:SetHidden(true)
		btnActionBarlockTex:SetHidden(true)
    end
		d("MysticActionBar locked, Changes have been saved.")
	--##############TODO#################
	--## HERE ADD stuff for Quickslots ##
	--###################################
end

local function unlocker()
    btnActionBarUnlockTex:SetHidden(false)
    btnActionBarUnlockTex:SetMovable(true)
    btnActionBarlockTex:SetHidden(true)
    ZO_ActionBar1KeybindBG:SetMovable(true)
    -- ZO_ContextualActionBar:SetHidden(true)
    ZO_ActionBar1KeybindBG:SetMouseEnabled(true)
    ZO_ActionBar1KeybindBG:SetResizeHandleSize(MOUSE_CURSOR_RESIZE_NS)
    -- ActionButton8UltimateBar:SetMouseEnabled(true)
    ------ #3
    ActionButton3:SetMovable(true)
    ActionButton3:SetMouseEnabled(true)
    --TODO make the buttons resizeable
    --    ActionButton3:SetResizeHandleSize(MOUSE_CURSOR_RESIZE_NS)
    ActionButton3Button:SetMouseEnabled(false)
    --   ActionButton3ButtonText:SetMovable(true)
    --   ActionButton3ButtonText:SetMouseEnabled(true)
    ------ #4
    ActionButton4:SetMovable(true)
    ActionButton4:SetMouseEnabled(true)
    ActionButton4Button:SetMouseEnabled(false)
    --   ActionButton4ButtonText:SetMovable(true)
    --   ActionButton4ButtonText:SetMouseEnabled(true)
    ------ #5
    ActionButton5:SetMovable(true)
    ActionButton5:SetMouseEnabled(true)
    ActionButton5Button:SetMouseEnabled(false)
    --   ActionButton5ButtonText:SetMovable(true)
    --   ActionButton5ButtonText:SetMouseEnabled(true)
    ----- #6
    ActionButton6:SetMovable(true)
    ActionButton6:SetMouseEnabled(true)
    ActionButton6Button:SetMouseEnabled(false)
    --   ActionButton6ButtonText:SetMovable(true)
    --   ActionButton6ButtonText:SetMouseEnabled(true)
    ------ #7
    ActionButton7:SetMovable(true)
    ActionButton7:SetMouseEnabled(true)
    ActionButton7Button:SetMouseEnabled(false)         ----------------------------- This one relativeTO ultimate8 ????????????? maybe someone should dig into esoui source code and do all that in a clean way xD
    --  ActionButton7ButtonText:SetMovable(true)
    --  ActionButton7ButtonText:SetMouseEnabled(true)
    ------ #8
	---MyBastel HERE START--------------------------------------------------------------------------------------------------------
	ActionButton8:ClearAnchors()
    ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)
	---MyBastel HERE END--------------------------------------------------------------------------------------------------------
    ActionButton8:SetMovable(true)
    ActionButton8:SetMouseEnabled(true)
    ActionButton8Button:SetMouseEnabled(false)
    --  ActionButton7ButtonText:SetMovable(true)
    --  ActionButton7ButtonText:SetMouseEnabled(true)
    ------ #9 which is actually 1
    ActionButton9:SetMovable(true)
    ActionButton9:SetMouseEnabled(true)
    ActionButton9Button:SetMouseEnabled(false)
    --  ActionButton9ButtonText:SetMovable(true)
    --  ActionButton9ButtonText:SetMouseEnabled(true)
    ZO_ActionBar1WeaponSwap:SetMovable(true)
    ZO_ActionBar1WeaponSwap:SetMouseEnabled(true)
	--##############TODO#################
	--## HERE ADD stuff for Quickslots ##
	--###################################
	d("MysticActionBar unlocked!\nMake sure to lock when you're finished.")
end

local function moveActionBarSetup()
    EVENT_MANAGER:UnregisterForEvent(MAB.appName, EVENT_PLAYER_ACTIVATED)
    if MABSV.HideWeaponSlot then
        btnActionBarUnlockTex = WINDOW_MANAGER:CreateControl(nil, ActionButton9, CT_TEXTURE)
        btnActionBarUnlockTex:SetAnchor(TOPLEFT, ActionButton9, TOPLEFT, -15, -15 )
        btnActionBarUnlockTex:SetDimensions(15, 15)
    else
    btnActionBarUnlockTex = WINDOW_MANAGER:CreateControl(nil, ZO_ActionBar1WeaponSwap, CT_TEXTURE)
    btnActionBarUnlockTex:SetAnchor(TOPLEFT, ZO_ActionBar1WeaponSwap, TOPLEFT, -10, - 10 )
        --MABSV.UnlockX, MABSV.UnlockY)
    btnActionBarUnlockTex:SetDimensions(15, 15)
    end
    btnActionBarUnlockTex:SetTexture("/esoui/art/miscellaneous/unlocked_up.dds")
    btnActionBarUnlockTex:SetTextureCoords(0, 1, 0, 1)
    btnActionBarUnlockTex:SetAlpha(1)
    btnActionBarUnlock = WINDOW_MANAGER:CreateControl(nil, btnActionBarUnlockTex, CT_BUTTON)
    btnActionBarUnlock:SetAnchorFill(btnActionBarUnlockTex)
    btnActionBarUnlock:SetDimensions(15, 15)
    -- btnActionBarUnlock.tooltipText = "Unlock the ActionBar"
    btnActionBarUnlock:SetHandler("OnClicked", function(self)
        locker()
    end)
    btnActionBarUnlockTex:SetHidden(true)
    if MABSV.HideWeaponSlot then
        btnActionBarlockTex = WINDOW_MANAGER:CreateControl(nil, ActionButton9, CT_TEXTURE)
        btnActionBarlockTex:SetAnchor(TOPLEFT, ActionButton9, TOPLEFT, -15, - 15 )
        btnActionBarlockTex:SetDimensions(15, 15)
    else
        btnActionBarlockTex = WINDOW_MANAGER:CreateControl(nil, ZO_ActionBar1WeaponSwap, CT_TEXTURE)
        btnActionBarlockTex:SetAnchor(TOPLEFT, ZO_ActionBar1WeaponSwap, TOPLEFT, -10, - 10 )
        --MABSV.UnlockX, MABSV.UnlockY)
        btnActionBarlockTex:SetDimensions(15, 15)
    end
    btnActionBarlockTex:SetTexture("/esoui/art/miscellaneous/locked_down.dds")
    btnActionBarlockTex:SetTextureCoords(0, 1, 0, 1)
    btnActionBarlockTex:SetAlpha(1)
    btnActionBarlock = WINDOW_MANAGER:CreateControl(nil, btnActionBarlockTex, CT_BUTTON)
    btnActionBarlock:SetAnchorFill(btnActionBarUnlockTex)
    btnActionBarlock:SetDimensions(15, 15)
    --  btnActionBarlock.tooltipText = "Unlock the ActionBar"
    btnActionBarlock:SetHandler("OnClicked", function(self)
        unlocker()
    end)
    btnActionBarlockTex:SetHidden(false)
    if MABSV.HideBlackBar then
        ZO_ActionBar1KeybindBG:SetHidden(true)
        ZO_ActionBar1KeybindBG:SetAlpha(0)
    else
        ZO_ActionBar1KeybindBG:ClearAnchors()
        ZO_ActionBar1KeybindBG:SetDimensions(MABSV.ABBG_WIDTH, MABSV.ABBG_HEIGHT)
        ZO_ActionBar1KeybindBG:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.ABBGX, MABSV.ABBGY)
        ZO_ActionBar1KeybindBG:SetHidden(false)
        ZO_ActionBar1KeybindBG:SetAlpha(1)
    end
    ActionButton3:ClearAnchors()
    ActionButton3:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB3X, MABSV.AB3Y)
    --  ActionButton3BG:SetHidden(true)
    ActionButton4:ClearAnchors()
    ActionButton4:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB4X, MABSV.AB4Y)
    ActionButton5:ClearAnchors()
    ActionButton5:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB5X, MABSV.AB5Y)
    ActionButton6:ClearAnchors()
    ActionButton6:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB6X, MABSV.AB6Y)
    ActionButton7:ClearAnchors()
    ActionButton7:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB7X, MABSV.AB7Y)
    ActionButton8:ClearAnchors()
    ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)
    ActionButton9:ClearAnchors()
    ActionButton9:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB9X, MABSV.AB9Y)
	--##############TODO#################
	--## HERE ADD stuff for Quickslots ##
	--###################################
    ZO_PlayerToPlayerAreaPromptContainer:ClearAnchors()
    ZO_PlayerToPlayerAreaPromptContainer:SetAnchor(BOTTOM, ZO_PlayerToPlayerArea, BOTTOM, 0, -550)
    if MABSV.CenterSlotIds then
        --   ActionButton9:ClearAnchors()
        --  ActionButton9:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB9X, MABSV.AB9Y)
        ActionButton3ButtonText:ClearAnchors()
        ActionButton3ButtonText:SetAnchorFill(ActionButton3)
        ActionButton3ButtonText:SetMouseEnabled(false)
        ActionButton3ButtonText:SetMovable(false)
        ActionButton4ButtonText:ClearAnchors()
        ActionButton4ButtonText:SetAnchorFill(ActionButton4)
        ActionButton4ButtonText:SetMouseEnabled(false)
        ActionButton4ButtonText:SetMovable(false)
        ActionButton5ButtonText:ClearAnchors()
        ActionButton5ButtonText:SetAnchorFill(ActionButton5)
        ActionButton5ButtonText:SetMouseEnabled(false)
        ActionButton5ButtonText:SetMovable(false)
        ActionButton6ButtonText:ClearAnchors()
        ActionButton6ButtonText:SetAnchorFill(ActionButton6)
        ActionButton6ButtonText:SetMouseEnabled(false)
        ActionButton6ButtonText:SetMovable(false)
        ActionButton7ButtonText:ClearAnchors()
        ActionButton7ButtonText:SetAnchorFill(ActionButton7)
        ActionButton7ButtonText:SetMouseEnabled(false)
        ActionButton7ButtonText:SetMovable(false)
        ActionButton8ButtonText:ClearAnchors()
        ActionButton8ButtonText:SetAnchorFill(ActionButton8)
        ActionButton8ButtonText:SetMouseEnabled(false)
        ActionButton8ButtonText:SetMovable(false)
        ActionButton9ButtonText:ClearAnchors()
        ActionButton9ButtonText:SetAnchorFill(ActionButton9)
        -- ActionButton9ButtonText:SetText("Hi")
        ActionButton9ButtonText:SetMouseEnabled(false)
        ActionButton9ButtonText:SetMovable(false)
	--##############TODO#################
	--## HERE ADD stuff for Quickslots ##
	--###################################
    end
    if MABSV.HideWeaponSlot then
        ZO_ActionBar1WeaponSwap:SetAlpha(0)
    else
        ZO_ActionBar1WeaponSwap:ClearAnchors()
        ZO_ActionBar1WeaponSwap:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB10X, MABSV.AB10Y)
    end
	--BASTEL HERE START-----------------------------------------------------------------------------------------------------------
	--TODO       1-> separate MasterQuickslot and slavequickslots and make em movable.    
	--TODO       2-> add direct consume functionality to replace my macro xD
	--TODO       3-> add functionality to lock unlock via slash command and option to hide the lock symbol for cleaner ui

	if MABSV.HideQuickSlot then
        ActionButton9:SetAlpha(0)
    else
		ActionButton9:SetAlpha(1)
    end
	if MABSV.HideKey then
		btnActionBarUnlockTex:SetHidden(true)
		btnActionBarlockTex:SetHidden(true)
    end

	--BASTEL HERE END----------------------------------------------------------------------------------
end

local function OnAddOnLoaded(eventCode, addOnName)
    if (MAB.appName ~= addOnName) then return end
    local Default = {
        ['ABBG_WIDTH'] = ZO_ActionBar1KeybindBG:GetWidth(),
        ['ABBG_HEIGHT'] = ZO_ActionBar1KeybindBG:GetHeight(),
        ['ABBGX'] = ZO_ActionBar1KeybindBG:GetLeft(),
        ['ABBGY'] = ZO_ActionBar1KeybindBG:GetTop(),
        ['AB3X'] = math.floor(ActionButton3:GetLeft()),
        ['AB3Y'] = math.floor(ActionButton3:GetTop()),
        ['AB4X'] = math.floor(ActionButton4:GetLeft()),
        ['AB4Y'] = math.floor(ActionButton4:GetTop()),
        ['AB5X'] = math.floor(ActionButton5:GetLeft()),
        ['AB5Y'] = math.floor(ActionButton5:GetTop()),
        ['AB6X'] = math.floor(ActionButton6:GetLeft()),
        ['AB6Y'] = math.floor(ActionButton6:GetTop()),
        ['AB7X'] = math.floor(ActionButton7:GetLeft()),
        ['AB7Y'] = math.floor(ActionButton7:GetTop()),
        ['AB8X'] = math.floor(ActionButton8:GetLeft()),
        ['AB8Y'] = math.floor(ActionButton8:GetTop()),
        ['AB9X'] = math.floor(ActionButton9:GetLeft()),
        ['AB9Y'] = math.floor(ActionButton9:GetTop()),
        ['AB10X'] = math.floor(ZO_ActionBar1WeaponSwap:GetLeft()),
        ['AB10Y'] = math.floor(ZO_ActionBar1WeaponSwap:GetTop()),
        ['AB3XBtn'] = 0,
        ['AB3YBtn'] = 0,
        ['AB4XBtn'] = 0,
        ['AB4YBtn'] = 0,
        ['AB5XBtn'] = 0,
        ['AB5YBtn'] = 0,
        ['AB6XBtn'] = 0,
        ['AB6YBtn'] = 0,
        ['AB7XBtn'] = 0,
        ['AB7YBtn'] = 0,
        ['AB8XBtn'] = 0,
        ['AB8YBtn'] = 0,
        ['AB9XBtn'] = 0,
        ['AB9YBtn'] = 0,
        ['HideBlackBar'] = false,
        ['CenterSlotIds'] = false,
        ["HideWeaponSlot"] = false,
		["HideQuickSlot"] = false,
		["HideKey"] = false,
        ["UnlockX"] = ActionButton3:GetLeft() - 50,
        ["UnlockY"] = ActionButton3:GetTop() - 50,
        ["LockX"] = ActionButton3:GetLeft() - 50,
        ["LockY"] = ActionButton3:GetTop() - 10
        --  ['AB10XBtn'] = math.floor(ZO_ActionBar1WeaponSwap:GetLeft()),
        --  ['AB10YBtn'] = math.floor(ZO_ActionBar1WeaponSwap:GetTop()),
	--##############TODO#################
	--## HERE ADD stuff for Quickslots ##
	--###################################
    }
	
    --    MABSV.HideWeaponSlot

    MABSV = ZO_SavedVars:NewAccountWide("MysticActionBar_SV", 10, nil, Default, nil)
    MAB.SetupUI()
    EVENT_MANAGER:RegisterForEvent(MAB.appName, EVENT_PLAYER_ACTIVATED, moveActionBarSetup)

--HERE bastel start -----------------------------------------------------------------------------------
	
	
	function mabslashcmd(extra)
  -- do something
		if extra=="lock" then
			locker()
		elseif extra=="unlock" then
			unlocker()
		else
			d("MysticActionBar Commands:")
			d("/mab lock")
			d("/mab unlock")
			 
		end
	end
 
	SLASH_COMMANDS["/mab"] = mabslashcmd
	
	
	
-- ULTIMATE POSITION BUG1 FIX1 ----------------
	ZO_PreHookHandler(ZO_ActionBar1, 'OnShow', function()
		ActionButton8:ClearAnchors()
		ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)		
	end)

-- ULTIMATE POSITION BUG1 FIX2 ----------------slightly different approach->better way to do it i guess
--    local customSkillsActionBarFragment = ZO_SkillsActionBarFragment:New()	
--    function customSkillsActionBarFragment:OnShown()
--        ZO_SkillsActionBarFragment.OnShown(self) -- call original (class) method
--    end
--    function customSkillsActionBarFragment:OnStateChange(oldState, newState)
--        ZO_SkillsActionBarFragment.OnStateChange(self, oldState, newState)    -- call original (class) method
--		ActionButton8:ClearAnchors()
--		ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)
--    end
--    local skillsScene = SCENE_MANAGER:GetScene("skills")
--    skillsScene:RemoveFragment(SKILLS_ACTION_BAR_FRAGMENT)
--    skillsScene:AddFragment(customSkillsActionBarFragment)
	
-- ULTIMATE POSITION BUG2 FIX1 --------------------------
	local function OnActionLayerPushed()
			ActionButton8:ClearAnchors()
			ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)
	end
	EVENT_MANAGER:RegisterForEvent(MAB.appName, EVENT_ACTION_LAYER_PUSHED, OnActionLayerPushed)
-- ULTIMATE POSITION BUG3 FIX1 --------------------------	
	local function OnX()
			ActionButton8:ClearAnchors()
			ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)
	end
	EVENT_MANAGER:RegisterForEvent(MAB.appName, EVENT_WEAPON_PAIR_LOCK_CHANGED, OnX)
	-- ULTIMATE POSITION BUG3 FIX2 --------------------------	still need to figure out where it resets the position after teleport -.-
--	local function OnY()
--			ActionButton8:ClearAnchors()
--			ActionButton8:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, MABSV.AB8X, MABSV.AB8Y)
--	end
--	EVENT_MANAGER:RegisterForEvent(MAB.appName, EVENT_ACTION_SLOT_STATE_UPDATED, OnY)
--HERE bastel end -----------------------------------------------------------------------------------
end
EVENT_MANAGER:RegisterForEvent(MAB.appName, EVENT_ADD_ON_LOADED, OnAddOnLoaded)