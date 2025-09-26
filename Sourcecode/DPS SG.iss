;========================================================
;  Program Name : Setup.exe
;  File         : DPS SG.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for DPS SG
;  License      : license.txt
;========================================================

[Setup]
AppName=DPS SG
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\DPS SG
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=dps_sg1\readme.txt
InfoAfterFile=dps_sg1\配布フリー宣言（アリスソフト）.txt
AppCopyright=readme.txt
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
Source: "dps_sg1\*"; DestDir: "{app}\dps_sg1"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Fahren Fliegen"; Filename: "{app}\dps_sg1\Fahren Fliegen\adv.exe"
Name: "{userdesktop}\Fahren Fliegen"; Filename: "{app}\dps_sg1\Fahren Fliegen\adv.exe"; Tasks: desktopicon
Name: "{group}\家庭教師はステキなお仕事"; Filename: "{app}\dps_sg1\家庭教師はステキなお仕事\adv.exe"
Name: "{userdesktop}\家庭教師はステキなお仕事"; Filename: "{app}\dps_sg1\家庭教師はステキなお仕事\adv.exe"; Tasks: desktopicon
Name: "{group}\信長の淫謀"; Filename: "{app}\dps_sg1\信長の淫謀\adv.exe"
Name: "{userdesktop}\信長の淫謀"; Filename: "{app}\dps_sg1\信長の淫謀\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール DPS SG"; Filename: "{uninstallexe}"
