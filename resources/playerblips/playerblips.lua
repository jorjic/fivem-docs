Citizen.CreateThread( function()
	while true do
		Citizen.Wait(0)
		
		local players = {}

		for i = 0, 31 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
		
		for k, v in pairs( players ) do
			if not GetBlipFromEntity( GetPlayerPed( v ) ) then
				if GetPlayerPed( v ) == GetPlayerPed( -1 ) then return end
				
				local blip = AddBlipForEntity( GetPlayerPed( v ) )
				SetBlipColour( blip, 0 )
			end
		end
		
	end
end )
