# 🍩 Justfiles

> Base Justfiles for Repetitive Tasks to Be Imported Remotely

## Example (Xcode)

```justfile
import? 'xcode.just'

target := 'Sora'

# Run `just fetch` to fetch the latest Xcode tasks
fetch:
   curl https://raw.githubusercontent.com/Fuwn/justfiles/refs/heads/main/xcode.just > xcode.just

# Override any tasks that have required arguments specific to your environment
format:
	just _format {{target}}

build:
	just _build {{target}}

open:
	just _open {{target}}


```


## License

This project is licensed under the terms of [The Unlicense](./LICENSE.txt).

