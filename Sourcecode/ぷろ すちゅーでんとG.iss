;========================================================
;  Program Name : Setup.exe
;  File         : ぷろ すちゅーでんとG.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for ぷろ すちゅーでんとG
;  License      : license.txt
;========================================================

[Setup]
AppName=ぷろ すちゅーでんとG
AppVersion=1.03A
DefaultDirName={pf}\AliceSoft\ぷろ すちゅーでんとG
DefaultGroupName=ぷろ すちゅーでんとG
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=prog_cd\readme.txt
InfoAfterFile=prog_cd\配布フリー宣言（アリスソフト）.txt
AppCopyright=prog_cd\readme.txt
UninstallDisplayIcon={app}\prog\gamedata\system3.exe
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
Source: "prog_cd\*"; DestDir: "{app}\prog"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\ぷろ すちゅーでんとG"; Filename: "{app}\prog\gamedata\system3.exe"
Name: "{group}\ぷろ すちゅーでんとGおまけ"; Filename: "{app}\prog\gamedata\prog_omake.exe"
Name: "{userdesktop}\ぷろ すちゅーでんとG"; Filename: "{app}\prog\gamedata\system3.exe"; Tasks: desktopicon
Name: "{userdesktop}\ぷろ すちゅーでんとGおまけ"; Filename: "{app}\prog\gamedata\prog_omake.exe"; Tasks: desktopicon
Name: "{group}\アンインストール ぷろ すちゅーでんとG"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\prog\gamedata\system3.exe"; Description: "ぷろ すちゅーでんとGを起動"; Flags: nowait postinstall skipifsilent
