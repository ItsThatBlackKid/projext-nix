# NixOS Configuration

This directory contains a complete NixOS configuration managed with Flakes and Home Manager, organized into a modular structure.

## File Structure

-   `flake.nix`: The main entry point for the entire system configuration. It defines dependencies (inputs) like `nixpkgs` and `home-manager`, and integrates the system and user configurations.

-   `configuration.nix`: The main system-wide configuration file. It imports all the system modules and sets basic system options.

-   `home.nix`: The main user-specific configuration file for the user `saokan`. It's managed by Home Manager and imports all the user-specific modules.

-   `modules/`: This directory contains all the configuration modules, separated by concern.
    -   `system/`: Contains system-wide configuration modules.
        -   `hardware.nix`: Configures hardware, including NVIDIA drivers and sound.
        -   `desktop.nix`: Configures the KDE Plasma desktop environment, Wayland, and related services.
        -   `packages.nix`: Lists all the packages to be installed system-wide.
    -   `home/`: Contains user-specific configuration modules managed by Home Manager.
        -   `apps.nix`: Lists all the user's graphical applications (Spotify, VS Code, etc.).
        -   `dev.nix`: Lists all the development tools (JDKs, Node.js, Flutter, etc.).
        -   `vscode.nix`: Configures VS Code, including settings and the list of extensions.
        -   `vscode-extensions.nix`: A dedicated, categorized list of VS Code extensions. This makes it easy to manage a large number of extensions.

## How to Use

Follow these steps to use this configuration when installing NixOS.

1.  **Install NixOS:** Follow the official NixOS installation guide.

2.  **Copy Files:** During the installation process, when you are prompted to edit the generated `configuration.nix`, instead, copy the entire contents of this directory to `/etc/nixos/` on the new system.

3.  **Apply Configuration:** Run the following command from the terminal to build and activate your new system configuration:
    ```bash
    sudo nixos-rebuild switch --flake /etc/nixos#nixos
    ```

4.  **Set Password:** After the configuration is applied, set the password for your user account:
    ```bash
    passwd saokan
    ```

5.  **Reboot:** Reboot the system. You should now be logged into your new NixOS KDE desktop with all your specified applications and tools ready to use.

## Making Changes

To modify your system in the future, edit the relevant module file in `/etc/nixos/modules/` and run the `nixos-rebuild switch --flake /etc/nixos#nixos` command again to apply the changes. For example, to add a new VS Code extension, you would add it to `modules/home/vscode-extensions.nix`.
