# RedstoneUtils
A Minecraft Datapack adding a small collection of utilities for interecting with redstone. Currently handles:
* Getting a block's powered state

## Scoreboards
These are scoreboard objectives used to represent a value of some kind.

```
redstone_utils.data
  Used for math and passing variables between functions.
```

## Function Calls
Function calls are called by you to trigger certian events or features.

```
function redstone_utils:v1/api/is_active
  Call on a block to check if it is powered by redstone.
 
  Output:
    #out redstone_utils.data: 0 for not powered, 1 for powered
```

## How to use
1. Install [LanternLoad](https://github.com/LanternMC/load) in your datapack, following its install directions
2. Copy the `RedstoneUtils/data/redstone_utils` folder into your data pack
3. Merge the file contents of `RedstoneUtils/data/load/tags/functions/*` into the files at `<your_datapack>/data/load/tags/functions/*`
4. Implement the API as described above.
