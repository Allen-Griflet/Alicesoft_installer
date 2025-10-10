;========================================================
;  Program Name : Setup.exe
;  File         : Intruder 桜屋敷の探索.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for Intruder 桜屋敷の探索
;  License      : license.txt
;========================================================

[Setup]
AppName=Intruder 桜屋敷の探索
AppVersion=1.05
DefaultDirName={pf}\AliceSoft\Intruder 桜屋敷の探索
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=intr\readme.txt
InfoAfterFile=intr\配布フリー宣言（アリスソフト）.txt
AppCopyright=\intr\readme.txt
UninstallDisplayIcon={app}\intr\adv.exe
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
Source: "intr\*"; DestDir: "{app}\intr"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Intruder 桜屋敷の探索"; Filename: "{app}\intr\adv.exe"
Name: "{userdesktop}\Intruder 桜屋敷の探索"; Filename: "{app}\intr\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール Intruder 桜屋敷の探索"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\intr\adv.exe"; Description: "Intruder 桜屋敷の探索を起動"; Flags: nowait postinstall skipifsilent

