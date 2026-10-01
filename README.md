# Homebrew tap for Pail

[Pail](https://github.com/chrisdmacrae/pail) hosts sites and small server apps on a server at home. This tap installs `pail`, the command that deploys to it.

```bash
brew install chrisdmacrae/tap/pail
```

It works on macOS and Linux, on Intel and Arm. To get a newer version later:

```bash
brew upgrade pail
```

Then point it at your Pail once, and deploy a folder:

```bash
pail login https://pail.lan
pail up ./dist
```

## How this repo is kept

`Formula/pail.rb` is written by Pail's release workflow each time a version is published. Changes made to it here are replaced by the next release, so send them to [chrisdmacrae/pail](https://github.com/chrisdmacrae/pail) instead.
