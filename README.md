[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine)

# LuaCC + Rojo Template

[Rojo-less Variant](https://github.com/BreadCity/LuaCC-Template)

Simple Template for using LuaCC with Rojo.

To bundle, run [`bundle.cmd`](bundle.cmd) or [`bundle.ps1`](bundle.ps1).

Information on how to script using this can be found in [src/README.md](src/).

To add models, textures, sounds, etc... to the project, simply add them as `.rbxmx` files to the [`rojo`](rojo/)/`<SERVICE>` Directory. It functions as any other Rojo directory.<br/>
**DO NOT** edit the `script.client.lua` and `script.server.lua` files in the rojo directory.

**Notice: all occurences of `###hash###` are replaced with the SHA256 Hash of the _whole_ bundled script (pre-hashing)**, and all occurences of `NOT_BUNDLED` are replaced with `BUNDLED`

## License

This project is licensed under `(EUPL-1.2 OR AGPL-3.0)`.

See [LICENSE.md](LICENSE.md) for more information.

#### Exceptions

If you want an exception to this license, please contact `YieldingCoder#3961` on Discord.

> If you need a mutual server, join the [Bread Hub Discord](https://cord.breadhub.cc/?ref=luacc-game-template)

#### Contributing

Please read the [LICENSE.md](LICENSE.md) file's `Multi-License` Section before contributing.
