local fn = vim.fn

local M = {}

function M.executable(name)
    if fn.executable(name) > 0 then
        return true
    end

    return false
end

M.has = function(feat)
    if fn.has(feat) == 1 then
        return true
    end

    return false
end

function M.may_create_dir(dir)
    local res = fn.isdirectory(dir)

    if res == 0 then
        fn.mkdir(dir, "p")
    end
end

function M.rand_int(low, high)
    math.randomseed(os.time())

    return math.random(low, high)
end

function M.rand_element(seq)
    local idx = M.rand_int(1, #seq)

    return seq[idx]
end

function M.add_pack(name)
    local status, error = pcall(vim.cmd, "packadd " .. name)

    return status
end

return M
