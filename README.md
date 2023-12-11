# <center>swift<center>
    followed programming convention located at: https://www.swift.org/documentation/api-design-guidelines/
    in order to run the code you need to download and install swift
- Linux installation
    - Arch: you can't directly install it with pacman because it is not the official repository
    in order to install it, you need to configure aur(Arch User Repository), after that you can just 
    "yay -S swift-bin"
    - Deb: go to this link https://swift.org/download/, and download swift, then extract the compressed file you just got, and execute the installer, then you need to export the path to the file in order for it to be available in the terminal, it depend on your terminal actually
- Windows installation
    - Well it's not really available for windows, but you can install swift for windows if you go to https://swiftforwindows.github.io/

then go to the folder and run:
- "swift main.swift RuceCoojer.swift"
# <center>clojure<center>
    in order for it to work use clj to run the code
- Linux installation:
    - for this one, you need java runtime so for debian
        - "sudo apt-get update"
        - "sudo apt-get install -y openjdk-11-jre"
        - "sudo apt-get install -y clojure"
    - for arch 
        - "sudo pacman -S clojure"
    then go to the folder and run just run clj 
        - "clj main.clj"
# <center>elixir<center>
    to run it you need setup elixir env:
- windows:
    - install erland
        go to https://www.erlang.org/downloads, download and install erlang
    - install elixir
        go to https://elixir-lang.org/install.html#windows, download and install elixir
- Linux:
    - Debian:
        - run those command:
            - "sudo apt-get install erlang"
            - "sudo apt-get install elixir"
    - Arch:
        - run this command:
            - "sudo pacman -S erlang elixir"
    to run it, got to the folder and run:
- "elixir main.ex"
# <center>Language C<center>
    GCC (GNU Compiler Collection) est normalement utilisable sur tout les linux et est installer de base comme compiler pour les utilisateur de windows telecharger l'installer https://mingw-w64.org/doku.php, executer l'installeur et suiver seulement les instruction,et installez le GCC compiler
    
    apres pour run le program il faut aller dans le dossier ou il a le fichier, et seulement run la commande
- "gcc main.c"