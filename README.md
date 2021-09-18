# 🏄‍♂️ Surfing 🏄‍♂️
Surfing is a highly functional Base64 tool.

## Encoder

```bash
$ surfing encode -m surfing!
---------------------------------
encode: c3VyZmluZyE=
```

### Option

| option | alternative | value | require (default) |
| --- | --- | --- | --- |
| --message | -m | Sring to encode | yes |
| --num | -n | Number of times to encode | `1` |
| --max | | Maximum number of characters | `high(int)` |
| --time | -t | Measure time | `false` |
| --simple | -s | Simple output | `false` |

## Decoder

```bash
$ surfing decode -m c3VyZmluZyE=
---------------------------------
decode: surfing!
```

### Option

| option | alternative | value | require (default) |
| --- | --- | --- | --- |
| --message | -m | Sring to encode | yes |
| --time | -t | Measure time | `false` |
| --simple | -s | Simple output | `false` |

## Author
[@momeemt](https://twitter.com/momeemt)