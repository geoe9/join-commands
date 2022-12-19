----------------------------------
-- @package     Join Commands
-- @author      geo
-- @build       v1.0
----------------------------------
cmds = {
    {"cl_threaded_bone_setup", "1"},
    {"gmod_mcore_test", "1"},
    {"mat_queue_mode", "-1"},
    {"mat_specular", "0"}
}
net.Receive("RunJoinCommands",function(len)
	for i=1, #cmds do
		RunConsoleCommand(cmds[i][1], cmds[i][2])
end)
