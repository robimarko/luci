-- Copyright 2019 Robert Marko <robimarko@gmail.com>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.meshpoint", package.seeall)

function index()
	board_name = luci.util.trim(luci.sys.exec("cat /tmp/sysinfo/board_name"))
	
	if board_name and board_name == "cilab,meshpoint-one" then
		local st = entry({"admin", "meshpoint"}, template("meshpoint"), _("MeshPoint"), 1)
		st.index = true
	end
end