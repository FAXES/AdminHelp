------------ Made By caprancTV ------------

RegisterNetEvent('SendPlayerReport')
AddEventHandler('SendPlayerReport', function(reportingParty, message)
	TriggerServerEvent("SendReportToAdmins", reportingParty, message)
end)