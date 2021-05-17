# Fix Snap icon theme

Fix the icons of Snap apps to use the ones from your icon theme, like Papirus.

## Usage

When Snap updates, the `.desktop` files are recreated, thus reverting to the basic icons.

You need to run this script when this happens (around once a week).

```bash
# Make the script executable 
chmod u+x fix-snap-icon-theme.sh

# It needs sudo in order to access to the .desktop files
sudo ./fix-snap-icon-theme.sh

# If you move the script to a particular folder
sudo ~/Scripts/fix-snap-icon-theme.sh
```

## How

It automates the process described in [this solution](https://askubuntu.com/a/1233701), which is to replace the icon path in the Snap apps `.desktop` file to the one from your icon theme.

## Contributing

Issues and merge requests are welcome. ✨
