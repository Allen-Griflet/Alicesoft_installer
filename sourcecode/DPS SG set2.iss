;========================================================
;  Program Name : Setup.exe
;  File         : DPS SG set2.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for DPS SG set2
;  License      : license.txt
;========================================================

[Setup]
AppName=DPS SG set2
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\DPS SG set2
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=readme.txt
InfoAfterFile=配布フリー宣言（アリスソフト）.txt
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
Source: "ANTIQUE HOUSE\*"; DestDir: "{app}\ANTIQUE HOUSE"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "いけない内科検診再び\*"; DestDir: "{app}\いけない内科検診再び"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "朱い夜\*"; DestDir: "{app}\朱い夜"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\ANTIQUE HOUSE"; Filename: "{app}\ANTIQUE HOUSE\adv.exe"
Name: "{userdesktop}\ANTIQUE HOUSE"; Filename: "{app}\ANTIQUE HOUSE\adv.exe"; Tasks: desktopicon
Name: "{group}\いけない内科検診再び"; Filename: "{app}\いけない内科検診再び\adv.exe"
Name: "{userdesktop}\いけない内科検診再び"; Filename: "{app}\いけない内科検診再び\adv.exe"; Tasks: desktopicon
Name: "{group}\朱い夜"; Filename: "{app}\朱い夜\adv.exe"
Name: "{userdesktop}\朱い夜"; Filename: "{app}\朱い夜\adv.exe"; Tasks: desktopicon
Name: "{group}\アンインストール DPS SG set2"; Filename: "{uninstallexe}"
