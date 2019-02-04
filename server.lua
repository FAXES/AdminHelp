------------ Made By caprancTV ------------

local helpCommand = "ahelp"

local admins ={
    "steam:11000010dbe40a2",
    "steam:",
    "steam:",
    "steam:"
}

RegisterCommand(helpCommand, function(source, args, raw)
    local message = table.concat(args, " ", 1)
    local helpPerson = tonumber(args[1])

    if message then
        TriggerClientEvent("chatMessage", source, "^1Help Request Sent to Online Admins.")
        TriggerClientEvent("SendHelpRequest", -1, source, message)
    else
        TriggerClientEvent("chatMessage", source, "^3Please specify a report message. \n^7Usage: /" .. helpCommand .. " Reason")
    end
end)

RegisterServerEvent('SendHelpRequestToAdmins')
AddEventHandler('SendHelpRequestToAdmins', function(helpingParty, message)
    local src = source

    if IsAdmin(src) then
        TriggerClientEvent('chatMessage', src, "^*^4" .. GetPlayerName(helpingParty) .. " Needs Help With ^r" .. message)
    end
end)

function IsAdmin(id)
    local hex = GetPlayerIdentifiers(id)[1]
    for k,v in pairs(admins) do
        if hex == v then
            return true
        end
    end
    return false
end
