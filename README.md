# DOTFILE AND CODESPACES

Most success has been with adding to `~/.zshrc`. Install script has almost no access to anything.
(For example, `git pull && yarn install` didn't work, because it couldn't log into git. Other
commands failed as well due to the executable not being found.)

## Troubleshooting

Dotfiles get cloned here: `/workspaces/.codespaces/.persistedshare/dotfiles`

Navigate to this directory, make changes and commit!

On install, logging is directed here: `/workspaces/.codespaces/.persistedshare/creation.log`
> Shift + G -> jump to bottom of file and bypass docker setup wall of text

If your install script fails, this will have the output

More info from github can be found [here](https://docs.github.com/en/codespaces/troubleshooting/troubleshooting-personalization-for-codespaces)

## Things to be aware of

- can't use aliases in install script
- can't connect _to_ local machine (easily)
