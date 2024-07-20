-- CODE --
local time = fcn.secondsUntilKick
local prevPos = nil
local isCameraDisabled = false

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		local playerPed = GetPlayerPed(-1)
		if playerPed then
			local currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if fcn.kickWarning == true and time == math.ceil(fcn.secondsUntilKick / 4) then
						lib.notify({
							title = '',
							description = 'After ' .. time .. ' seconds you will be kicked for AFK!',
							type = 'inform'
						})
						else
					end

					time = time - 1
				else
					TriggerServerEvent("fcn_afksystemKickForAFK")
				end
			else
				time = fcn.secondsUntilKick
			end

			prevPos = currentPos
		end
	end
end)


-- Commands made by focaan xd -- 

if fcn.afkResetEnabled == true then
RegisterCommand(fcn.afkResetCommand, function(source, args, rawCommand)
	time = fcn.secondsUntilKick
	lib.notify({
		title = '',
		description = 'AFK timer has been reset!',
		type = 'success'
	})
end, false)
 else
   end


RegisterCommand(fcn.afkCameraCommand, function(source, args, rawCommand)
    if isCameraDisabled then
        DisableIdleCamera(false)
        isCameraDisabled = false
		lib.notify({
			title = '',
			description = 'AFK camera has been turned off!',
			type = 'success'
		})
    else
        DisableIdleCamera(true)
        isCameraDisabled = true
		lib.notify({
			title = '',
			description = 'AFK camera has been turned on!',
			type = 'success'
		})
    end
end, false)


