# /home/saokan/projects/project-nix/modules/home/vscode-extensions.nix
{ pkgs }:

{
  extensions = [
  ]
}

with pkgs.vscode-extensions; [
  # Nix Development
  "jnoortheen.nix-ide"

  # Flutter & Dart
 " dart-code.flutter"
  "dart-code.dart-code"

  # Web Development (TypeScript/React)
  "esbenp.prettier-vscode"
  # /home/saokan/projects/project-nix/modules/home/vscode-extensions.nix

  # Nix Development
  "jnoortheen.nix-ide"

  # C/C++ Development
  "ms-vscode.cpptools-extension-pack"

  # Java Development
  "vscjava.vscode-java-pack"
  # Web Development (TypeScript/React)
  esbenp.prettier-vscode

  "dbaumer.vscode-eslint"

  bradlc.vscode-tailwindcss # A popular choice for styling

  # Git
  eamodio.gitlens

  github.vscode-pull-request-github # Official GitHub extension

  # Docker
  ms-azuretools.vscode-docker

  # General Productivity & Theming
  usernamehw.errorlens

  mikestead.dotenv

  vscode-icons-team.vscode-icons # For file icons
]


