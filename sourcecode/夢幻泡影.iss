;========================================================
;  Program Name : Setup.exe
;  File         : 夢幻泡影.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for 夢幻泡影
;  License      : license.txt
;========================================================

[Setup]
AppName=夢幻泡影
AppVersion=1.00
DefaultDirName={pf}\AliceSoft\夢幻泡影
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=mugen\readme.txt
InfoAfterFile=mugen\配布フリー宣言（アリスソフト）.txt
AppCopyright=mugen\readme.txt
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
Source: "mugen\gamedata\*"; DestDir: "{app}\gamedata"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\夢幻泡影"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\夢幻泡影"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール 夢幻泡影"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\gamedata\system3.exe"; Description: "夢幻泡影を起動"; Flags: nowait postinstall skipifsilent
