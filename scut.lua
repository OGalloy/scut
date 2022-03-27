scut = {}
--Function for exucuting command.
scut.execute = function(command)
	local request = io.popen(command)
	local recieve = request:read("*a")
	request:close()
	return recieve
end
--Receive file info.
scut.fileInfo = function(fileName)
	local result = scut.execute("ffprobe -i "..fileName.." -hide_banner")
	return result
end
--Information about us.
scut.aboutUs = function()
		print("This is programm for cuting video and audio")
end

--scut.cutVideoFragment = function(