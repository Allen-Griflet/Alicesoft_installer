;========================================================
;  Program Name : Setup.exe
;  File         : あゆみちゃん物語.iss
;  Author       : Allen.Griflet(https://github.com/Allen-Griflet)
;  Created      : 2025-09-24
;  Last Update  : 2025-09-24
;  Description  : Installer script for あゆみちゃん物語
;  License      : license.txt
;========================================================

[Setup]
AppName=あゆみちゃん物語
AppVersion=1.11w
DefaultDirName={pf}\AliceSoft\あゆみちゃん物語
DefaultGroupName=アリスソフト
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=license.txt
InfoBeforeFile=ayumi_cd\readme.txt
InfoAfterFile=ayumi_cd\配布フリー宣言（アリスソフト）.txt
AppCopyright=ayumi_cd\readme.txt
UninstallDisplayIcon={app}\ayumi_cd\gamedata\system3.exe
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
Source: "ayumi_cd\*"; DestDir: "{app}\ayumi\gamedata"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\あゆみちゃん物語"; Filename: "{app}\ayumi\gamedata\system3.exe"
Name: "{userdesktop}\あゆみちゃん物語"; Filename: "{app}\ayumi\gamedata\system3.exe"; Tasks: desktopicon
Name: "{group}\アンインストール あゆみちゃん物語"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\ayumi\gamedata\system3.exe"; Description: "あゆみちゃん物語を起動"; Flags: nowait postinstall skipifsilent
