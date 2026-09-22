{
  description = "Hypr* ecosystem stable release flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default-linux";

    # Pinned to the exact rev the running system builds against (report.md),
    # locked here because nixpkgs' GCC 15 -> 16 default-stdenv bump broke
    # builds against the newer tagged releases.
    aquamarine.url = "github:hyprwm/aquamarine/36b66db4ddd708ad19f5db850af6a478d8a19b2a";
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

    hypridle.url = "github:hyprwm/hypridle/e5c01af0842bd66617f7004568df9406111d6e80";
    hypridle.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprland-protocols.follows = "hyprland-protocols";
      # hypridle can't build against the same hyprutils/hyprlang rev Hyprland
      # itself uses under the current GCC (see report.md) -- pinned to the
      # older revs that still build for this input only.
      hyprlang.follows = "hypridle-hyprlang";
      hyprutils.follows = "hypridle-hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hypridle-hyprutils.url = "github:hyprwm/hyprutils/a2dbd8a4cc51f7cbe4224732668392bb1aa79df2";
    hypridle-hyprutils.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hypridle-hyprlang.url = "github:hyprwm/hyprlang/3a1c1b25b059dae2c6bbc46991562ba1158d125c";
    hypridle-hyprlang.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hypridle-hyprutils";
    };

    hyprland.url = "github:hyprwm/hyprland/d50ca8950ac8753c54e50b6d44f4461df14bfabb";
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

    hyprlauncher.url = "github:hyprwm/hyprlauncher/v0.1.6";
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

    hyprlock.url = "github:hyprwm/hyprlock/d1ebb16b9a072ca98658cb7938fb9cbfae1bff36";
    hyprlock.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      # hyprlock needs even older hyprutils/hyprgraphics/hyprlang than
      # hypridle to build under the current GCC (see report.md) -- pinned
      # for this input only.
      hyprgraphics.follows = "hyprlock-hyprgraphics";
      hyprlang.follows = "hyprlock-hyprlang";
      hyprutils.follows = "hyprlock-hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprlock-hyprutils.url = "github:hyprwm/hyprutils/e63f3a79334dec49f8eb1691f66f18115df04085";
    hyprlock-hyprutils.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hyprlock-hyprgraphics.url = "github:hyprwm/hyprgraphics/7d63c04b4a2dd5e59ef943b4b143f46e713df804";
    hyprlock-hyprgraphics.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprlock-hyprutils";
    };

    hyprlock-hyprlang.url = "github:hyprwm/hyprlang/7615ee388de18239a4ab1400946f3d0e498a8186";
    hyprlock-hyprlang.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprlock-hyprutils";
    };

    hyprpaper.url = "github:hyprwm/hyprpaper/v0.8.4";
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

    hyprpicker.url = "github:hyprwm/hyprpicker/v0.4.7";
    hyprpicker.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprpolkitagent.url = "github:hyprwm/hyprpolkitagent/v0.2.0";
    hyprpolkitagent.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprutils.follows = "hyprutils";
    };

    hyprpwcenter.url = "github:hyprwm/hyprpwcenter/v0.1.2";
    hyprpwcenter.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
    };

    hyprshutdown.url = "github:hyprwm/hyprshutdown/v0.1.1";
    hyprshutdown.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprtoolkit.follows = "hyprtoolkit";
      hyprutils.follows = "hyprutils";
    };

    hyprsunset.url = "github:hyprwm/hyprsunset/v0.4.0";
    hyprsunset.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      hyprland-protocols.follows = "hyprland-protocols";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprtoolkit.url = "github:hyprwm/hyprtoolkit?rev=16548bfa4d38296423ed49b6af1c6bc2677a5fdd";
    hyprtoolkit.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
      aquamarine.follows = "aquamarine";
      hyprgraphics.follows = "hyprgraphics";
      hyprlang.follows = "hyprlang";
      hyprutils.follows = "hyprutils";
      hyprwayland-scanner.follows = "hyprwayland-scanner";
    };

    hyprutils.url = "github:hyprwm/hyprutils/6cf50415e06dc6bd9f1252f1b745eac6b4a1cc39";
    hyprutils.inputs = {
      nixpkgs.follows = "nixpkgs";
      systems.follows = "systems";
    };

    hyprwayland-scanner.url = "github:hyprwm/hyprwayland-scanner/v0.4.6";
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

    xdph.url = "github:hyprwm/xdg-desktop-portal-hyprland/v1.4.1";
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
