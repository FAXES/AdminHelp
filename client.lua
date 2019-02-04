------------ Made By caprancTV ------------

RegisterNetEvent('SendHelpRequest')
AddEventHandler('SendHelpRequest', function(helpParty, message)
	TriggerServerEvent("SendHelpRequestToAdmins", helpParty, message)
end)
