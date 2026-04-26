;InnoSetupVersion=5.4.3
;ONLY USE THIS IF YOU COMPILED WITH VISUAL STUDIO 2005!!!
#define AppVer GetFileVersion('..\TorrenzBloc.exe')

[Setup]
AppName=TorrenzBloc
AppVersion=v{#AppVer}
AppId={{4C5DF268-0208-4CDE-A7F0-65F7E2CB5067}
AppPublisherURL=https://github.com/MrLantus/TorrenzBloc
AppSupportURL=https://github.com/MrLantus/TorrenzBloc/pulls
AppUpdatesURL=https://github.com/MrLantus/TorrenzBloc/releases/
DefaultDirName={%localappdata}\TorrenzBloc
OutputBaseFilename=B3DSTP
Compression=lzma2
PrivilegesRequired=lowest
WizardImageFile=setup.bmp
DefaultGroupName=TorrenzBloc
DiskSpanning=yes
SlicesPerDisk=1
DiskSliceSize=1457664


[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[Files]
Source: "Redist\vcredist_x86.exe"; DestDir: "{tmp}"; Flags: ignoreversion 
;Source: "Redist\vcredist_x64.exe"; DestDir: "{tmp}"; Check: "IsWin64"; Flags: ignoreversion 
Source: "..\content\*"; DestDir: "{app}\content"; Flags: ignoreversion recursesubdirs
;Source: "..\SDL.DLL"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
Source: "..\TorrenzBloc.exe"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Registry]


[Run]
Filename: "{tmp}\vcredist_x86.exe"; Parameters: "/q"; Tasks: instvc; 
;Filename: "{tmp}\vcredist_x64.exe"; Parameters: "/q"; Tasks: instvc; Check: "IsWin64";
Filename: "iexplore.exe"; Parameters: "https://toranverse.neocities.org/Portal/FIRSTINTALLTORRENZBLOC"; Description: Start playing TorrenzBloc; Flags: shellexec postinstall nowait skipifsilent

[Icons]
Name: "{group}\TorrenzBloc Editor"; Filename: "{app}\TorrenzBloc.exe"; Tasks: startscut;

Name: "{userdesktop}\TorrenzBloc Editor"; Filename: "{app}\TorrenzBloc.exe"; Tasks: desktopicon

[Tasks]
Name: "instvc"; Description: "Install Visual C++ Redistributable 2005 SP1 (Requires elevated permissions)";
Name: "desktopicon"; Description: "Create Desktop Icons";
Name: "startscut"; Description: "Create Start Menu Icons";

