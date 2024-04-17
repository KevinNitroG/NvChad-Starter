local get_name = function()
  local osname
  -- ask LuaJIT first
  if jit then
    return jit.os:lower()
  end

  -- Unix, Linux variants
  local fh, _ = assert(io.popen("uname -o 2>/dev/null", "r"))
  if fh then
    osname = fh:read()
  end

  return osname:lower() or "windows"
end

return get_name()
