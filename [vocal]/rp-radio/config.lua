radioConfig = {
    Controls = {
        Activator = { -- Open/Close Radio
            Name = "INPUT_REPLAY_START_STOP_RECORDING_SECONDARY", -- Control name
            Key = nil, -- F2
        },
        Secondary = {
            Name = "INPUT_SPRINT",
            Key = 21, -- Left Shift
            Enabled = false, -- Require secondary to be pressed to open radio with Activator
        },
        Toggle = { -- Toggle radio on/off
            Name = "INPUT_CONTEXT", -- Control name
            Key = 51, -- E
        },
        Increase = { -- Increase Frequency
            Name = "INPUT_CELLPHONE_RIGHT", -- Control name
            Key = 175, -- Right Arrow
            Pressed = false,
        },
        Decrease = { -- Decrease Frequency
            Name = "INPUT_CELLPHONE_LEFT", -- Control name
            Key = 174, -- Left Arrow
            Pressed = false,
        },
        Input = { -- Choose Frequency
            Name = "INPUT_FRONTEND_ACCEPT", -- Control name
            Key = 201, -- Enter
            Pressed = false,
        },
        Broadcast = {
            Name = "INPUT_VEH_PUSHBIKE_SPRINT", -- Control name
            Key = 137, -- Caps Lock
        },
        ToggleClicks = { -- Toggle radio click sounds
            Name = "INPUT_SELECT_WEAPON", -- Control name
            Key = 37, -- Tab
        }
    },
    Frequency = {
        Private = {
            -- Policia
            [1] = true, -- CNP | Principal
            [2] = true, -- CNP | 2
            [3] = true, -- CNP | 3
            [4] = true, -- CNP | 4
            [5] = true, -- CNP | UDYCO 1
            [6] = true, -- CNP | UDYCO 2
            -- SAMUR
            [7] = true, -- SAMUR | Principal
            [8] = true, -- SAMUR | 2
            -- Mecanicos
            [9] = true, -- Meca | Principal
            [10] = true -- Meca | 2

        }, -- List of private frequencies
        Current = 1, -- Don't touch
        CurrentIndex = 1, -- Don't touch
        Min = 1, -- Minimum frequency
        Max = 2000, -- Max number of frequencies
        List = {}, -- Frequency list, Don't touch
        Access = {}, -- List of freqencies a player has access to
    },
    AllowRadioWhenClosed = true -- Allows the radio to be used when not open (uses police radio animation) 
}