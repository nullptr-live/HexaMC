hexamc(6)


# NAME

hexamc - a launcher and instance manager for Minecraft.


# SYNOPSIS

*hexamc* [OPTIONS...]


# DESCRIPTION

HexaMC is a custom launcher for Minecraft that allows you to easily manage
multiple installations of Minecraft at once. It also allows you to easily
install and remove mods by simply dragging and dropping.
Here are the current features of HexaMC.

# OPTIONS

*-d, --dir*=DIRECTORY
	Use DIRECTORY as the HexaMC root.

*-l, --launch*=INSTANCE_ID
	Launch the instance specified by INSTANCE_ID.

*--alive*
	Write a small 'live.check' file after HexaMC starts.

*-h, --help*
	Display help text and exit.

*-v, --version*
	Display program version and exit.

*-a, --profile*=PROFILE
	Use the account specified by PROFILE (only valid in combination with --launch).

# EXIT STATUS

*0*
	Success

*1*
	Failure (syntax or usage error; configuration error; unexpected error).

# BUGS

https://github.com/nullptr-live/HexaMC/issues

# RESOURCES

GitHub: https://github.com/nullptr-live/HexaMC

# AUTHORS

HexaMC Contributors
