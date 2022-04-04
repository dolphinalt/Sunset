
function colors {
    Black="\033[0;30m"
    Dark_Gray="\033[1;30m"
    Red="\033[0;31m"
    Light_Red="\033[1;31m"
    Green="\033[0;32m"
    Light_Green="\033[1;32m"
    Orange="\033[0;33m"
    Yellow="\033[1;33m"
    Blue="\033[0;34m"
    Light_Blue="\033[1;34m"
    Purple="\033[0;35m"
    Light_Purple="\033[1;35m"
    Cyan="\033[0;36m"
    Light_Cyan="\033[1;36m"
    Light_Gray="\033[0;37m"
    White="\033[1;37m"
    Default="\033[0;0m"
}

function utLogo {
    echo -e "${Orange}                     @@@@@@@@@                    
                @@@@@@@@@@@@@@@@@@@               
            @@@@@@@@@@@@@@@@@@@@@@@@@@@           
         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@... 
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@... 
  ~~ &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& ~~~
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~ 
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~ 
      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~     
   ~~   ~~~~~~~ ~~~~~~~~~~~~~~~~~~~~ ~~~~~~       
  ~        ~~~~~~~~ ~~~~~~~~ ~~~ ~~~~~~~      ~~  
      ~   ~    ~~ ~~~ ~~~ ~~~~~~~ ~~    ~     ~   
   ~    ~           ~  ~ ~~ ~  ~        ~~     ~  
   ~      ~      ~                   ~      ~     
        ~~ ~            ~   ~ ~          ~   ~    ${Default}

╭──────────────────────────────────────────────────╮
│                                                  │
│                      ${Yellow}Sunset${Default}                      │
│          ${Yellow}CTF${Default} (Capture The Flag) client           │
│                      ${Yellow}dolfin${Default}                      │
│                                                  │
╰──────────────────────────────────────────────────╯
"
}

function utInfo {
    echo -e "${Orange}                     @@@@@@@@@                    
                @@@@@@@@@@@@@@@@@@@               
            @@@@@@@@@@@@@@@@@@@@@@@@@@@           
         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@... 
     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@... 
  ~~ &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& ~~~
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~ 
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~ 
      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~     
   ~~   ~~~~~~~ ~~~~~~~~~~~~~~~~~~~~ ~~~~~~       
  ~        ~~~~~~~~ ~~~~~~~~ ~~~ ~~~~~~~      ~~  
      ~   ~    ~~ ~~~ ~~~ ~~~~~~~ ~~    ~     ~   
   ~    ~           ~  ~ ~~ ~  ~        ~~     ~  
   ~      ~      ~                   ~      ~     
        ~~ ~            ~   ~ ~          ~   ~    ${Default}

╭──────────────────────────────────────────────────╮
│                                                  │
│                      ${Yellow}Sunset${Default}                      │
│          ${Yellow}CTF${Default} (Capture The Flag) client           │
│                      ${Yellow}dolfin${Default}                      │
│                                                  │
│──────────────────────────────────────────────────│
│    Flag    │             Description             │
│──────────────────────────────────────────────────│
│ ${Yellow}--Binary${Default}   │ Binary exploitation tools and notes │
│ ${Yellow}--Crypto${Default}   │ Cryptography tools and notes        │
│ ${Yellow}--Forensics${Default}│ Forensics tools and notes           │
│ ${Yellow}--General${Default}  │ Genreal CTF tools and notes         │
│ ${Yellow}--Help${Default}     │ Displays detailed help information  │
│ ${Yellow}--Init${Default}     │ Installs required packages          │
│ ${Yellow}--Credtis${Default}  │ Displays credits                    │
│ ${Yellow}--Password${Default} │ Password cracking tools and notes   │
│ ${Yellow}--Reverse${Default}  │ Reverse Engineering tools and notes │
│ ${Yellow}--Web${Default}      │ Web exploitation tools and notes    │
╰──────────────────────────────────────────────────╯
"
}

function utWarn {
    spaces="                                   "
    spaces=${spaces:${#1}}
    echo -e "╭────────────────────────────────────────╮
│ ${Yellow}[!] $1$spaces${Default}│
╰────────────────────────────────────────╯"
}

function utInstallApt {
    apt-get install $1 -y
    utWarn "$1 installed"
}
