-- debug utils

-- print masco
function print_mascot()
    print("\n\n Welcome to Game...\n\n")
end

-- package 的搜索路径
function package_path()
	local package_path = package.path
	print("package path: "..package.path)
end

--pack
local str_pack = function(cmd, msg)
    return table.concat( msg, ",").."\r\n"
end

--unpack
local str_unpack = function(msgstr)
    local msg = {}

    while true do
        local arg, rest = string.match( msgstr, "(.-),(.*)")
        if arg then
            msgstr = rest
            table.insert(msg, arg)
        else
            table.insert(msg, msgstr)
            break
        end
    end

    return msg[1], msg
end