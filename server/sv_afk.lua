local _source = source

RegisterServerEvent("fcn_afksystemKickForAFK")
AddEventHandler("fcn_afksystemKickForAFK", function()
    DropPlayer(source, fcn.kickMessage)
if fcn.enableLogging == true then
    local connect = {
        {		
        ["color"] = "16753920",
        ["title"] = "AFK KICK",
        ["description"] = 'Player [ ' .. source .. ' ] ( ' .. _source .. ' ) has been kicked for AFK.',
        ["footer"] = {
        ["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
        },
    }
}
        PerformHttpRequest(fcn.webhook.logWebhook, function(err, text, headers) end, 'POST',json.encode({username = "fcn_afksystem - AFK Kick", embeds = connect}), { ['Content-Type'] ='application/json' })
        else
        end
end)
