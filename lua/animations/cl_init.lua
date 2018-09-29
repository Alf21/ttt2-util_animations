-- client
include("animations/client/calculations/cubic_bezier.lua")
include("animations/client/role_anim.lua")
include("animations/client/libs/web_image.lua")
include("animations/client/connect_anim.lua")

net.Receive("TTT2PlayerAuthedSharing", function(len)
	local ply = net.ReadEntity()

	hook.Run("TTT2PlayerAuthed", ply, ply:SteamID(), ply:EntIndex())
end)
