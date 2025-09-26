;========================================================
;  Program Name : Setup.exe
;  File         : 宇宙怪盗ファニーBee.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for 宇宙怪盗ファニーBee
;  License      : license.txt
;========================================================

[Setup]
AppName=宇宙怪盗ファニーBee
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\宇宙怪盗ファニーBee
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
Name: "{group}\宇宙怪盗ファニーBee"; Filename: "{app}\gamedata\system3.exe"
Name: "{userdesktop}\宇宙怪盗ファニーBee"; Filename: "{app}\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール 宇宙怪盗ファニーBee"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\gamedata\system3.exe"; Description: "宇宙怪盗ファニーBeeを起動"; Flags: nowait postinstall skipifsilent
