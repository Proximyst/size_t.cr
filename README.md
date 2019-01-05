# cr-sizes

The `size_t` and `usize_t` types for Crystal, because we for some reason don't
already have them.

## Installation

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  size_t:
    github: Proximyst/size_t.cr
```
2. Run `shards install`

## Usage

```crystal
require "cr-sizes"

# Use the usize_t/USize type:
typeof(Sizes::USize) # (64-bit processor) => UInt64
                     # (32-bit processor) => UInt32

# Use the size_t/ISize type:
typeof(Sizes::ISize) # (64-bit processor) =>  Int64
                     # (32-bit processor) =>  Int32
```

## Contributors

- [Mariell Hoversholm](https://github.com/your-github-user) - creator and maintainer
