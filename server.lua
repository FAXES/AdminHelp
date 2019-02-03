------------ Made By caprancTV ------------

local reportCommand = "ahelp"

local admins ={
    "steam:11000010dbe40a2",
    "steam:",
    "steam:",
    "steam:"
}

RegisterCommand(reportCommand, function(s, a)
	local message = table.concat(a, " ")
    local reportedPerson = tonumber(a[1])

    if message then
        TriggerClientEvent("chatMessage", s, "^1Report Sent to Online Admins.")
        TriggerClientEvent("SendPlayerReport", -1, s, message)
    else
        TriggerClientEvent("chatMessage", s, "^3Please specify a report message. \n^7Usage: /" .. reportCommand .. " Reason")
    end
end)

RegisterServerEvent('SendReportToAdmins')
AddEventHandler('SendReportToAdmins', function(reportingParty, message)
    local src = source

    if IsAdmin(src) then
        TriggerClientEvent('chatMessage', src, "^*^4[".. GetPlayerName(reportingParty).."NEEDS HELP]^r With " .. message)
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