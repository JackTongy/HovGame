cc.FileUtils:getInstance():setPopupNotify(false)

--添加cocos的框架代码
cc.FileUtils:getInstance():addSearchPath("frameworks-cocos/")  

require "config"
require "cocos.init"

local function __G__TRACKBACK__(msg)
	-- body
	print("------------------------------------")
	print("LUA ERROR : " .. tostring(msg))
	print(debug.traceback())
	print("------------------------------------")
end

local function Entry()
	-- body
	
end

xpcall(Entry, __G__TRACKBACK__)
