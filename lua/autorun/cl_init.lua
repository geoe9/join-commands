----------------------------------
-- @package     Join Commands
-- @author      geo
-- @build       v1.0
----------------------------------
net.Receive("RunJoinCommands",function(len)
	for i=1, #config do
		RunConsoleCommand(config[1], config[2])
end)
