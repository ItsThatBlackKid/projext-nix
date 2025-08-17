# /home/saokan/projects/project-nix/modules/home/vscode-extensions.nix
{ pkgs }:

with pkgs.vscode-extensions; [
  # Nix Development
  jnoortheen.nix-ide

  # Flutter & Dart
  dart-code.flutter
  dart-code.dart-code

  # Web Development (TypeScript/React)
  esbenp.prettier-vscode
  # /home/saokan/projects/project-nix/modules/home/vscode-extensions.nix
{ pkgs }:

with pkgs.vscode-extensions; [
  # Nix Development
  jnoortheen.nix-ide

  # C/C++ Development
  ms-vscode.cpptools-extension-pack

  # Java Development
  vscjava.vscode-java-pack

  # Flutter & Dart
  dart-code.flutter
  dart-code.dart-code

  # Web Development (TypeScript/React)
  esbenp.prettier-vscode
  dbaumer.vscode-eslint
  bradlc.vscode-tailwindcss # A popular choice for styling
  dsznajder.es7-react-js-snippets

  # Git
  eamodio.gitlens
  github.vscode-pull-request-github # Official GitHub extension

  # Docker
  ms-azuretools.vscode-docker

  # General Productivity & Theming
  usernamehw.errorlens
  mikestead.dotenv
  vscode-icons-team.vscode-icons # For file icons
  equinusocio.vsc-material-theme # Material Ocean Theme
]

  bradlc.vscode-tailwindcss # A popular choice for styling
  # Consider adding a linter for your preferred framework, e.g., dsznajder.es7-react-js-snippets

  # Git
  eamodio.gitlens
  github.vscode-pull-request-github # Official GitHub extension

  # General Productivity & Theming
  # vscode-icons-team.vscode-icons # For file icons
  # dracula-theme.theme-dracula # Example theme
]
