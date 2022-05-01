Draft: see https://github.com/etienne-napoleone/chalk for chalk needs

# VChalk
Colorizer for terminal in vlang

## Installation

With vpm:

    v install depperm.vchalk

## Usage

```
import vchalk

normal := vchalk.Chalk{s:'This is a test'}
println(normal)
fg := vchalk.Chalk{s:'This is a fg test', fg:'#19E835'}
println(fg)
bg := vchalk.Chalk{s:'This is a bg test', bg:'#969450'}
println(bg)
both := vchalk.Chalk{s:'This is a bg test', fg:'#19E835',  bg:'#969450'}
println(both)
```
Availble colors: any hex color. Default foreground(`fg`) is white (`#ffffff`) and background(`bg`) is black (`#000000`)
