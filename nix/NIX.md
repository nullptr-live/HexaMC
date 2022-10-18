# How to import

To import with flakes use

```nix
{
  inputs = {
    hexamc.url = "github:nullptr-live/HexaMC";
  };

...

  nixpkgs.overlays = [ inputs.hexamc.overlay ]; ## Within configuration.nix
  environment.systemPackages = with pkgs; [ hexamc ]; ##
}
```

To import without flakes use channels:

```sh
nix-channel --add https://github.com/nullptr-live/HexaMC/archive/master.tar.gz hexamc
nix-channel --update hexamc 
nix-env -iA hexamc 
```

or alternatively you can use

```nix
{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball "https://github.com/nullptr-live/HexaMC/archive/main.tar.gz")).overlay
  ];

  environment.systemPackages = with pkgs; [ hexamc ];
}
```
