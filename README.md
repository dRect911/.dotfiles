### Package Dump

On Manjaro Linux, the equivalent package manager to Homebrew is `pacman`, and there isn't a direct equivalent command for `brew bundle dump --describe`. However, you can achieve similar functionality by combining a few commands to list and save installed packages.

Here's a simple script that you can use:

```bash
pacman -Qqe > pkglist.txt
```

This command lists all explicitly installed packages and writes the list to a file named `pkglist.txt`. Each line in the file corresponds to a package.

If you want to include explicitly installed packages along with their descriptions, you can use the following command:

```bash
pacman -Qqe | xargs pacman -Qi | awk '/^Name/{name=$3}/^Description/{desc=$0; print name " " desc}' > pkglist_with_descriptions.txt
```

This command gets the list of explicitly installed packages, retrieves information about each package, and writes the package name along with its description to a file named `pkglist_with_descriptions.txt`.

Feel free to adjust these commands based on your specific requirements or preferences.

### Oh-My-Zsh Installation

Via curl
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
