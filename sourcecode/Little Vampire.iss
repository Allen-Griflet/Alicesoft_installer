;========================================================
;  Program Name : Setup.exe
;  File         : Little Vampire.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for Little Vampire
;  License      : license.txt
;========================================================

[Setup]
AppName=Little Vampire
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\Little Vampire
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=lv\readme.txt
InfoAfterFile=lv\配布フリー宣言（アリスソフト）.txt
AppCopyright=\lv\readme.txt
UninstallDisplayIcon={app}\lv\adv.exe
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
Source: "lv\*"; DestDir: "{app}\lv"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Little Vampire"; Filename: "{app}\lv\adv.exe"
Name: "{userdesktop}\Little Vampire"; Filename: "{app}\lv\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール Little Vampire"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\lv\adv.exe"; Description: "Little Vampireを起動"; Flags: nowait postinstall skipifsilent
