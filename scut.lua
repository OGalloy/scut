scut = {}
--Function for exucuting command.
scut.execute = function(command)
	local request = io.popen(command)
	local recieve = request:read("*a")
	request:close()
	return recieve
end
--Receive file info.
scut.fileInfo = function(inputFile)
	local result = scut.execute("ffprobe -i "..inputFile.." -hide_banner")
	return result
end
--Information about programm.
scut.aboutUs = function()
		print("This is programm for cuting video and audio")
end

scut.cutVideoFragment = function(inputFile, time1, time2)
	local result = scut.execute("ffmpeg -i "..inputFile..
								" -ss "..time1.." -t "..time2..
								" -vcodec copy -acodec copy scut.mp4")
	return result
end
