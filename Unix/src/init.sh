. src/utils.sh
. sunset
colors
utLogo

packagesApt=("python3-pip" "python2" "python3" "netcat" "hashcat" "aircrack-ng" "john" "autopsy" "foremost" "audacity" "nodejs" "gpp" "rustc" "golang-go" "qemu" "docker" "exiftool" "fcrackzip" "default-jdk" "steghide" "stegsolve" "strings" "exiv2" "binwalk" "zsteg")

for package in ${packagesApt[@]}; do
    utInstallApt $package
done

# Manually install packages
dpkg -i src/assets/programs/code_1.63.2-1639562499_amd64.deb
utWarn "Vscode installed"
pip3 install stegoveritas
utWarn "Stegoveritas installed"

if [ $Reset == "True" ]; then
    echo "" > src/assets/save
    echo -e "╭────────────────────────────────────────────────────────╮
│ ${Light_Cyan}[?] Enter flag header${Default} (part before brackets)           │
╰────────────────────────────────────────────────────────╯"
    read header
    echo "HEADER:$header" > src/assets/save
    spaces="                       "
    spaces=${spaces:${#header}}
    echo -e "╭────────────────────────────────────────────────────────╮
│ ${Yellow}[!] Flag format saved as: $header{asdf}${Default}$spaces│
╰────────────────────────────────────────────────────────╯"
else
    header=`sed -n 's/HEADER://p' src/assets/save`
    if [ -z $header ]; then
        echo -e "╭────────────────────────────────────────╮
│ ${Light_Red}[$] FLAG FORMAT DOES NOT EXIST${Default}         │
╰────────────────────────────────────────╯"
        echo -e "╭────────────────────────────────────────────────────────╮
│ ${Light_Cyan}[?] Enter flag header${Default} (part before brackets)           │
╰────────────────────────────────────────────────────────╯"
        read header
        echo "HEADER:$header" > src/assets/save
        spaces="                       "
        spaces=${spaces:${#header}}
        echo -e "╭────────────────────────────────────────────────────────╮
│ ${Yellow}[!] Flag format saved as: $header{asdf}${Default}$spaces│
╰────────────────────────────────────────────────────────╯"
    else
        spaces="                                "
        spaces=${spaces:${#header}}
        echo -e "╭────────────────────────────────────────────────────────╮
│ ${Yellow}[!] Flag format: $header{asdf}${Default}$spaces│
╰────────────────────────────────────────────────────────╯"
    fi
fi

echo -e "╭────────────────────────────────────────╮
│ ${Light_Green}[~] Init: DONE${Default}                         │
╰────────────────────────────────────────╯"