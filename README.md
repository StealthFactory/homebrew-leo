# homebrew-leo

A Homebrew tap for [leo](https://github.com/StealthFactory/leo), a tiny,
extensible command-line sidekick with a JSON object store.

## Install

```sh
brew tap stealthfactory/leo
brew install leo
```

Or in one line without tapping first:

```sh
brew install stealthfactory/leo/leo
```

## Upgrade

```sh
brew update
brew upgrade leo
```

## Uninstall

```sh
brew uninstall leo
brew untap stealthfactory/leo
```

## What's here

`Formula/leo.rb` builds leo from its tagged release using the system Go
toolchain. See the [main repo](https://github.com/StealthFactory/leo) for what
leo does and how to use it.

## License

MIT
