{
  description = "Hypr* ecosystem stable release flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default-linux";

    aquamarine.url = "github:hyprwm/aquamarine/7bb8bdf4e8fedaf4dfae58512bc4c728671727df";
    aquamarine.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprcursor.url = "github:hyprwm/hyprcursor/e4ed7c08123df5af460a0a70961380cbfb872f76";
    hyprcursor.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprlang.follows = "hyprlang";
    };

    hyprgraphics.url = "github:hyprwm/hyprgraphics/7c895c44e3ca6d28ed68ddd80ec02b02b925e7fc";
    hyprgraphics.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
    };

    hypridle.url = "github:hyprwm/hypridle/aa958ed7ad4863860b93ecd7189419e193bfae2c";
    hypridle.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprland-protocols.follows = "hyprland-protocols";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprland.url = "github:hyprwm/hyprland/e368c13c27a42a173b9e08fa0bf413f9f7073187";
    hyprland.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprcursor.follows = "hyprcursor";
      hyprgraphics.follows = "hyprgraphics";
      hyprland-guiutils.follows = "hyprland-guiutils";
      hyprland-protocols.follows = "hyprland-protocols";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
      hyprwire.follows = "hyprwire";
      xdph.follows = "xdph";
    };

    hyprland-guiutils.url = "github:hyprwm/hyprland-guiutils/4c30cf3097ea963c0e250749ee0c59f8b08816d6";
    hyprland-guiutils.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprlang.follows = "hyprlang";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprland-protocols.url = "github:hyprwm/hyprland-protocols/v0.7.1";
    hyprland-protocols.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hyprland-qt-support.url = "github:hyprwm/hyprland-qt-support/v0.1.0";
    hyprland-qt-support.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hyprlang.url = "github:hyprwm/hyprlang/9508458be316a0d70d37ebed1ab725ccd10411ff";
    hyprlang.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
    };

    hyprlauncher.url = "github:hyprwm/hyprlauncher/339be04ba0fa8cde392dd0bae85cb23bf09212a5";
    hyprlauncher.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprlang.follows = "hyprlang";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
      hyprwire.follows = "hyprwire";
    };

    hyprlock.url = "github:hyprwm/hyprlock/0332e40b8e56404f11cd79f859f208a4b9de8714";
    hyprlock.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprgraphics.follows = "hyprgraphics";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprpaper.url = "github:hyprwm/hyprpaper/39029bdfda857a5ea60340a427681893d12d4892";
    hyprpaper.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprlang.follows = "hyprlang";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
      hyprwire.follows = "hyprwire";
    };

    hyprpicker.url = "github:hyprwm/hyprpicker/5c451cb4e9d6b1bd2f729d68de8aa114112c7390";
    hyprpicker.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprpolkitagent.url = "github:hyprwm/hyprpolkitagent/0e4492994e211b9af9365f16a9fda35d32e106bb";
    hyprpolkitagent.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
    };

    hyprpwcenter.url = "github:hyprwm/hyprpwcenter/fe3c07de0b768713aaec409f392ee1261a5c6d28";
    hyprpwcenter.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
    };

    hyprshutdown.url = "github:hyprwm/hyprshutdown/2d011c4a3dfb990004450e785608e91635f3d146";
    hyprshutdown.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
    };

    hyprsunset.url = "github:hyprwm/hyprsunset/d729fc124fc93d93f5ad795e59c4ff30377fc4d4";
    hyprsunset.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprland-protocols.follows = "hyprland-protocols";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprtoolkit.url = "github:hyprwm/hyprtoolkit/b3f2d0e725e4eaf804af7e529cb69bbed43d1a04";
    hyprtoolkit.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprutils.url = "github:hyprwm/hyprutils/95983ee836ff205e615bba67d1f67098e1231941";
    hyprutils.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hyprwayland-scanner.url = "github:hyprwm/hyprwayland-scanner/62e62c1ca23da17612c6890d4ad2064f575643db";
    hyprwayland-scanner.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hyprwire.url = "github:hyprwm/hyprwire/4ce7cd6b6128c1ac41caf23c58a30a26b327f9dd";
    hyprwire.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
    };

    xdph.url = "github:hyprwm/xdg-desktop-portal-hyprland/e87ae7823e7bf0601385220c69b5a3b245123fc5";
    xdph.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprland-protocols.follows = "hyprland-protocols";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      ...
    }:
    let
      systems = import inputs.systems;
      forAllSystems =
        f:
        nixpkgs.lib.genAttrs systems (
          system:
          f {
            inherit system;
            pkgs = import nixpkgs {
              inherit system;
              overlays = [ self.overlays.default ];
            };
          }
        );
    in
    {
      packages = forAllSystems (
        {
          system,
          pkgs,
          ...
        }:
        {
          default = pkgs.hyprland;
          inherit (pkgs)
            aquamarine
            hyprcursor
            hyprgraphics
            hypridle
            hyprland-guiutils
            hyprland
            hyprland-protocols
            hyprland-qt-support
            hyprlang
            hyprlauncher
            hyprlock
            hyprpaper
            hyprpicker
            hyprpolkitagent
            hyprpwcenter
            hyprshutdown
            hyprsunset
            hyprtoolkit
            hyprutils
            hyprwayland-scanner
            hyprwire
            xdg-desktop-portal-hyprland
            ;
        }
      );

      formatter = forAllSystems ({ pkgs, ... }: pkgs.nixfmt-tree);

      checks = self.packages;

      overlays.default =
        with nixpkgs.lib;
        (composeManyExtensions (
          mapAttrsToList (input: _: inputs.${input}.overlays.default) (
            filterAttrs (name: _: name != "self" && name != "nixpkgs" && name != "systems") inputs
          )
        ));
    };
}
