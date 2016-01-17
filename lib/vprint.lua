local function vprint(var, dept)
    local function sub_vprint(var, cur_depth, max_depth)
		if cur_depth > max_depth then
			return nil
		end

		local result = ""
		local indent_space = string.rep(" ", 4)
		local indent_brace  = string.rep(indent_space, cur_depth - 1)
		local indent_var = indent_brace .. indent_space

		result = result .. tostring(var) .. "\n"
		result = result .. indent_brace .. "{\n"

		for key, value in pairs(var) do
			result = result .. indent_var .. "[" .. tostring(key) .. "] = "

			if type(value) == "table" then
				result = result .. sub_vprint(value, cur_depth + 1, max_depth)
			elseif type(value) == "string" then
				result = result .. "\"" .. tostring(value) .. "\""
			else
				result = result .. tostring(value)
			end

			result = result .. ",\n"
		end

		-- remove last comma(,)
		result = string.sub(result, 1, string.len(result) - 2)
		result = result .. "\n"

		result = result .. indent_brace .. "}"

		return result
    end

    if(type(var) == "table") then
    	local max_depth = tonumber(dept) or 5

        local str = sub_vprint(var, 1, max_depth)
        print(str)
    else
        print(var)
    end
end

return vprint