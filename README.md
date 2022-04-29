# Block Utils
A Minecraft Datapack adding a small collection of utilities for handeling some block interactions. Currently handles:
* Getting a block's redstone powered state

## Scoreboards
These are scoreboard objectives used to represent a value of some kind.

```
block_utils.data
  Used for math and passing variables between functions.
```

## Function Calls
Function calls are called by you to trigger certian events or features.

```
function block_utils:v1/api/is_active
  Call on a block to check if it is powered by redstone.
 
  Output:
    #out block_utils.data: 0 for not powered, 1 for powered
```

## How to use
1. Install [LanternLoad](https://github.com/LanternMC/load) in your datapack, following its install directions
2. Copy the `BlockUtils/data/block_utils` folder into your data pack
3. Merge the file contents of `BlockUtils/data/load/tags/functions/*` into the files at `<your_datapack>/data/load/tags/functions/*`
4. Implement the API as described above.

For easier mangament of dependencies, check out my project [Datapack Build Manager](https://github.com/ICY105/DatapackBuildManager).
