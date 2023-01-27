# git-user

Bash script for switching the Git user easily.

## Installation

Copy `git-user` into any directory and make sure it is in the `PATH` (and the executable flag is set).

## Usage

```shell script
git user add john.doe@acme.org "John DOE"
git user add jdoe@private.local "John Doe"

# inside the Git repository

git user set john.doe@acme.org
# sets user.name to John DOE
# and user.email to john.doe@acme.org
```

If [gum](https://github.com/charmbracelet/gum) or [fzf](https://github.com/junegunn/fzf) is installed,
then the user can be selected interactively by using the cursor keys:

```text
git user set
# displays the following prompt

Select user (current: John DOE <john.doe@acme.org>):
  John Doe <jdoe@private.local>
> John DOE <john.doe@acme.org>
```

## Implementation Details

Users are stored in the global Git configuration.
Hence, no additional config file is required.

```shell script
git config --get-regexp 'users\..*'
# prints
users.john.doe@acme.org.name John DOE
users.john.doe@acme.org.email john.doe@acme.org
users.jdoe@private.local.name John Doe
users.jdoe@private.local.email jdoe@private.local
```

By default, the global Git configuration is stored in `${HOME}/.gitconfig` e.g.,

```ini
[core]
        autocrlf = false
...
[users "john.doe@acme.org"]
        name = John DOE
        email = john.doe@acme.org
[users "jdoe@private.local"]
        name = John Doe
        email = jdoe@private.local
```

## Alternatives

Incomplete list of similar tools (ordered by stars in descending order, as of January 2023):

* https://github.com/geongeorge/Git-User-Switch
* https://github.com/matsuyoshi30/gitsu
* https://github.com/joealba/gitswitch
* https://github.com/gesquive/git-user
* https://github.com/forthedamn/gitum
* https://github.com/WindomZ/gituser.js
* https://github.com/krnsk0/guser
* https://github.com/spenserblack/change-git-user
* https://github.com/WindomZ/gituser
* https://github.com/timo-cmd/glitter
