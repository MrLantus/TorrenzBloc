;InnoSetupVersion=5.4.3
;ONLY USE THIS IF YOU COMPILED WITH VISUAL STUDIO 2003!!!
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
Source: "Redist\msvcr71.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "Redist\msvcp71.dll"; DestDir: "{app}"; Flags: ignoreversion 
Source: "..\content\*"; DestDir: "{app}\content"; Flags: ignoreversion recursesubdirs
Source: "..\TorrenzBloc.exe"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Registry]


[Run]
Filename: "iexplore.exe"; Parameters: "https://toranverse.neocities.org/Portal/FIRSTINTALLTORRENZBLOC"; Description: Start playing TorrenzBloc; Flags: shellexec postinstall nowait skipifsilent

[Icons]
Name: "{group}\TorrenzBloc Editor"; Filename: "{app}\TorrenzBloc.exe"; Tasks: startscut;

Name: "{userdesktop}\TorrenzBloc Editor"; Filename: "{app}\TorrenzBloc.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create Desktop Icons";
Name: "startscut"; Description: "Create Start Menu Icons";

