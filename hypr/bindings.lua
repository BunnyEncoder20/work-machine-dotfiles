-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- ── Personal app bindings ─────────────────────────────────────────────
-- Unbinds first where they replace an Omarchy default.

-- Activity monitor (SUPER + SHIFT + T is unused by default)
o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop" })

-- was: ChatGPT
hl.unbind("SUPER + SHIFT + A")
o.bind("SUPER + SHIFT + A", "Anki", { launch = "anki" })

-- was: Calendar (HEY)
hl.unbind("SUPER + SHIFT + C")
o.bind("SUPER + SHIFT + C", "Calendar", { webapp = "https://calendar.google.com/calendar/u/0/r" })

-- was: Email (HEY)
hl.unbind("SUPER + SHIFT + E")
o.bind("SUPER + SHIFT + E", "Excalidraw", { webapp = "https://excalidraw.com/" })

-- was: Omawrite
hl.unbind("SUPER + SHIFT + W")
o.bind("SUPER + SHIFT + W", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })

-- SUPER + SHIFT + I is unused by default
o.bind("SUPER + SHIFT + I", "Instagram", { webapp = "https://www.instagram.com/", focus = true })

-- was: Docker (lazydocker)
hl.unbind("SUPER + SHIFT + D")
o.bind("SUPER + SHIFT + D", "Discord", { webapp = "https://discord.com/channels/@me" })

-- was: Google Messages
hl.unbind("SUPER + SHIFT + CTRL + G")
o.bind("SUPER + SHIFT + CTRL + G", "Github", { webapp = "https://github.com/BunnyEncoder20/" })

-- was: Signal
hl.unbind("SUPER + SHIFT + G")
o.bind("SUPER + SHIFT + G", "Gemini", { webapp = "https://gemini.google.com/app" })

-- was: Music (Spotify)
hl.unbind("SUPER + SHIFT + M")
o.bind("SUPER + SHIFT + M", "VLC Player", { launch = "vlc", focus = "^vlc$" })

-- was: Browser (duplicate of SUPER + SHIFT + RETURN)
hl.unbind("SUPER + SHIFT + B")
o.bind("SUPER + SHIFT + B", "Brave", { launch = "brave" })

-- ── Tiling fixes ──────────────────────────────────────────────────────
-- was: Toggle window split (hl.dsp.layout("togglesplit"))
-- togglesplit is dwindle-only; on a scrolling workspace Hyprland raises
-- "no such layoutmsg for scrolling" and shows "Runtime error in Lua".
hl.unbind("SUPER + J")
o.bind("SUPER + J", "Toggle window split", "hypr-toggle-split-safe")
