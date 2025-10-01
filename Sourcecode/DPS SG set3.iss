;========================================================
;  Program Name : Setup.exe
;  File         : DPS SG set3.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for DPS SG set3
;  License      : license.txt
;========================================================

[Setup]
AppName=DPS SG set3
AppVersion=0
DefaultDirName={pf}\AliceSoft\DPS SG set3
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=readme.txt
InfoAfterFile=dps_sg3\配布フリー宣言（アリスソフト）.txt
AppCopyright=dps_sg3\readme.txt
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
Source: "dps_sg3*"; DestDir: "{app}\dps_sg3\Rabbit P4P"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Rabbit P4P"; Filename: "{app}\dps_sg3\ANTIQUE HOUSE\adv.exe"
Name: "{userdesktop}\Rabbit P4P"; Filename: "{app}\dps_sg3\Rabbit P4P\adv.exe"; Tasks: desktopicon
Name: "{group}\しんこんさんものがたり"; Filename: "{app}\dps_sg3\しんこんさんものがたり\adv.exe"
Name: "{userdesktop}\しんこんさんものがたり"; Filename: "{app}\dps_sg3\しんこんさんものがたり\adv.exe"; Tasks: desktopicon
Name: "{group}\卒業"; Filename: "{app}\dps_sg3\卒業\adv.exe"
Name: "{userdesktop}\卒業"; Filename: "{app}\dps_sg3\卒業\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール DPS SG set3"; Filename: "{uninstallexe}"
