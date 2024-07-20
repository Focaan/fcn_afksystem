fcn = {}

-- ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
-- ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
-- ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
-- ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
-- ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
--  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 

fcn.kickMessage = "[fcn_afksystem] \n\n ❌You Have Been kicked for AFK! \n After FiveM restart you will be able to connect again."  -- The kick "reason"/message
fcn.secondsUntilKick = 1800 -- After what time the player will get kicked
fcn.kickWarning = true -- If it will show the player a notify when he will be kicked
fcn.enableLogging = true -- Disable/Enable discord logging in sv_config/server.lua
-- AFK RESET SETTINGS -- 
fcn.afkResetEnabled = true -- Disable/Enable the afkreset command
fcn.afkResetCommand = "afkreset" -- Name of the command Default: /afkreset
-- AFK CAMERA SETTINGS -- 
fcn.afkCameraCommand = "afkcamera" -- Name Of the command Default: /afkcamera








-- LOCALES -- (im too dump to crate a locales file/system :) 

--- TODO
