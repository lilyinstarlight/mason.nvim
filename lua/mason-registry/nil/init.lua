local Pkg = require "mason-core.package"
local cargo = require "mason-core.managers.cargo"

return Pkg.new {
    name = "nil",
    desc = [[Yet another language server for Nix]],
    homepage = "https://github.com/oxalica/nil",
    languages = { Pkg.Lang.Nix },
    categories = { Pkg.Cat.LSP },
    install = cargo.crate("nil", {
        git = {
            url = "https://github.com/oxalica/nil",
        },
        bin = { "nil" },
    }),
}
