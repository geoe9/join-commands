util.AddNetworkString("RunJoinCommands")

hook.Add("PlayerInitialSpawn","FullLoadSetup",function(ply)
	-- Currently the only way to ensure execution when player's client has fully loaded
    hook.Add("SetupMove",ply,function(self,ply,_,cmd)
        if self == ply and not cmd:IsForced() then net.Start("RunJoinCommands") net.Send(self) hook.Remove("SetupMove",self) end
    end)
end)