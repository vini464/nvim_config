local M = {
	readTable = function(file)
		local handle = io.open(file, "rb")
		local data
		if handle ~= nil then
			data = handle:read("*a")
			handle:close()
		else
      data = function()
        return {}
      end
		end

		local t = load(data)()
		return t
	end,

  writeTable = function(file, newTable)
    local strTable = "local M = {\n"
    for k, v in pairs(newTable) do
      strTable = strTable .. string.format('\t%s="%s",\n',k, v)
    end
    strTable = strTable .. "} \nreturn M"
--    print(strTable)
    local handle = io.open(file, "wb")
    if (handle ~= nil) then
      handle:write(strTable)
      handle:close()
    end
  end
}
return M
