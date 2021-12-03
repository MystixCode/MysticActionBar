local LAM = LibStub("LibAddonMenu-2.0")

local panelData = {
    type = "panel",
    name = MAB.color.colArcane .. "MysticActionBar",
    displayName = "MysticActionBar",
    author = "@MysticRage6",
    version = "1.0.0.2",
    slashCommand = "/mab", --(optional) will register a keybind to open to this panel
    registerForRefresh = true, --boolean (optional) (will refresh all options controls when a setting is changed and when the panel is shown)
    registerForDefaults = true, --boolean (optional) (will set all options controls back to default values)
}


local optionsTable = {
    [1] = {
        type = "header",
        name = MAB.color.colArcane .. "Settings",
        width = "full", --or "half" (optional)
    },
    [2] = {
        type = "description",
        --title = "My Title",	--(optional)
        --title = "Action Bar Options", --(optional)
        text = "To change slot position look at ActionBar for the 'key' symbol..\n..or use slash commands '/mab unlock' and '/mab lock'",
        width = "full", --or "half" (optional)
    },
    [3] = {
        type = "checkbox",
        name = "Hide Black Bar",
        tooltip = "Hide the black bar (shadow) under the action bar?",
        getFunc = function() return MABSV.HideBlackBar
        end,
        setFunc = function(value) MABSV.HideBlackBar = value
        end,
        width = "half", --or "half" (optional)
        warning = "Will need to reload the UI.", --(optional)
    },
    [4] = {
        type = "checkbox",
        name = "Bind Slot Id to Center Top",
        tooltip = "This moves Q,1,2,3,4,5,6,R to the center/top of the action button.",
        getFunc = function() return MABSV.CenterSlotIds
        end,
        setFunc = function(value) MABSV.CenterSlotIds = value
        end,
        width = "half", --or "half" (optional)
		warning = "Will need to reload the UI.", --(optional)
    },
    [5] = {
        type = "checkbox",
        name = "Hide the weapon slot?",
        tooltip = "You can still swap weapons, just the icon is hidden.",
        getFunc = function() return MABSV.HideWeaponSlot
        end,
        setFunc = function(value) MABSV.HideWeaponSlot = value
        end,
        width = "half", --or "half" (optional)
		warning = "Will need to reload the UI.", --(optional)
    },
	[6] = {
        type = "checkbox",
        name = "Hide Standard Quickslot",
        tooltip = "Hides the Standard quickslot because in addition with aui quickslots and a macro to direct consume pots its not needed",
        getFunc = function() return MABSV.HideQuickSlot
        end,
        setFunc = function(value) MABSV.HideQuickSlot = value
        end,
        width = "half", --or "half" (optional)
		warning = "Will need to reload the UI.", --(optional)
    },
	[7] = {
        type = "checkbox",
        name = "Hide Key Symbol",
        tooltip = "Hides the Key Symbol (lock/unlock symbol) u can still lock/unlock via slashcommands",
        getFunc = function() return MABSV.HideKey
        end,
        setFunc = function(value) MABSV.HideKey = value
        end,
        width = "half", --or "half" (optional)
		warning = "Will need to reload the UI.", --(optional)
    },
	[8] = {
	 	type = "button",
		name = "Reload UI",
		tooltip = "",
		width = "full",
		func = function() 
	      ReloadUI("ingame")
		end,
	  },
	 [9] = {
        type = "description",
        text = "Quickslot under construction atm u cant position single aui quickslots and u have to grab them a little on the left side to move ;)",
        width = "full", --or "half" (optional)
    }
}

function MAB:SetupUI()
    LAM:RegisterAddonPanel("MysticActionBar", panelData)
    LAM:RegisterOptionControls("MysticActionBar", optionsTable)
end