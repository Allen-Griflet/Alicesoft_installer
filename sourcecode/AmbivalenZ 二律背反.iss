;========================================================
;  Program Name : Setup.exe
;  File         : AmbivalenZ 二律背反.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for AmbivalenZ 二律背反
;  License      : license.txt
;========================================================

[Setup]
AppName=AmbivalenZ 二律背反
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\AmbivalenZ 二律背反
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=readme.txt
InfoAfterFile=配布フリー宣言（アリスソフト）.txt
AppCopyright=readme.txt
UninstallDisplayIcon={app}\gamedata\system3.exe
DisableWelcomePage=no
PrivilegesRequired=admin

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Components]
Name: "main"; Description: "ゲーム本体（必須）"; Flags: fixed
Name: "bonus"; Description: "追加パック（HDテクスチャなど）"; Types: full compact custom

[Tasks]
Name: "desktopicon"; Description: "デスクトップにショートカットを作成"; GroupDescription: "追加オプション:"; Flags: checkedonce

[Files]
Source: "gamedata\*"; DestDir: "{app}\gamedata"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\AmbivalenZ 二律背反"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\AmbivalenZ 二律背反"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール AmbivalenZ 二律背反"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\gamedata\system3.exe"; Description: "AmbivalenZ 二律背反を起動"; Flags: nowait postinstall skipifsilent
