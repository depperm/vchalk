module vchalk

import strconv

struct Chalk {
    s string [required]
mut:
    fg string = '#ffffff'
    bg string = '#000000'
}
fn (c Chalk) str() string {
    return '\x1b[48;2;${c.rgb_from_hex(c.bg)}m\x1b[38;2;${c.rgb_from_hex(c.fg)}m$c.s\x1b[0m'
}
fn (c Chalk) rgb_from_hex (s string) string {
    r := strconv.common_parse_int(s[1..3], 16, 16, true, false) or { 0 }
    g := strconv.common_parse_int(s[3..5], 16, 16, true, false) or { 0 }
    b := strconv.common_parse_int(s[5..7], 16, 16, true, false) or { 0 }
    return '$r;$g;$b'
}
