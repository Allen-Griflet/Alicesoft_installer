;========================================================
;  Program Name : Setup.exe
;  File         : Super DPS.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for Super DPS
;  License      : license.txt
;========================================================

[Setup]
AppName=Super DPS
AppVersion=0
DefaultDirName={pf}\AliceSoft\Super DPS
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=sdps\readme.txt
InfoAfterFile=sdps\配布フリー宣言（アリスソフト）.txt
AppCopyright=sdps\readme.txt
UninstallDisplayIcon=no
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
Source: "sdps\*"; DestDir: "{app}\sdps"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\カンパン"; Filename: "{app}\sdps\カンパン\adv.exe"
Name: "{userdesktop}\カンパン"; Filename: "{app}\sdps\カンパン\adv.exe"; Tasks: desktopicon
Name: "{group}\遠野の森"; Filename: "{app}\sdps\遠野の森\adv.exe"
Name: "{userdesktop}\遠野の森"; Filename: "{app}\sdps\遠野の森\adv.exe"; Tasks: desktopicon
Name: "{group}\海賊稼業"; Filename: "{app}\sdps\海賊稼業\adv.exe"
Name: "{userdesktop}\海賊稼業"; Filename: "{app}\sdps\海賊稼業\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール Super DPS"; Filename: "{uninstallexe}"
