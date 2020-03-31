hs.hotkey.bind({"cmd", "alt", "ctrl"}, "T", function()
  hs.application.launchOrFocus("/Users/civanerf/repositories-onedrive/scripts/environment/automator/terminal-shortcut.app")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.application.launchOrFocus("/Applications/Google Chrome.app/")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "F", function()
  hs.execute("open ~/")
end)

hs.window.animationDuration = 0
units = {
right       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
left        = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
top         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
bot         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },

upright     = { x = 0.50, y = 0.00, w = 0.50, h = 0.50 },
botright    = { x = 0.50, y = 0.50, w = 0.50, h = 0.50 },
upleft      = { x = 0.00, y = 0.00, w = 0.50, h = 0.50 },
botleft     = { x = 0.00, y = 0.50, w = 0.50, h = 0.50 },

maximum     = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
}

mash = {"cmd", "alt", "ctrl"}
hs.hotkey.bind(mash, 'left', function() hs.window.focusedWindow():move(units.left,    nil, true) end)
hs.hotkey.bind(mash, 'right', function() hs.window.focusedWindow():move(units.right,     nil, true) end)
hs.hotkey.bind(mash, 'up', function() hs.window.focusedWindow():move(units.top,      nil, true) end)
hs.hotkey.bind(mash, 'down', function() hs.window.focusedWindow():move(units.bot,      nil, true) end)

hs.hotkey.bind(mash, '1', function() hs.window.focusedWindow():move(units.upleft,   nil, true) end)
hs.hotkey.bind(mash, '2', function() hs.window.focusedWindow():move(units.upright,  nil, true) end)
hs.hotkey.bind(mash, '3', function() hs.window.focusedWindow():move(units.botleft,  nil, true) end)
hs.hotkey.bind(mash, "4", function() hs.window.focusedWindow():move(units.botright, nil, true) end)

hs.hotkey.bind(mash, 'm', function() hs.window.focusedWindow():move(units.maximum,    nil, true) end)
