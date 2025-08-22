[Setup]
AppName=CRESCENT MOON ������
AppVersion=1.0
DefaultDirName={pf}\AliceSoft\CRESCENT MOON ������
DefaultGroupName=�A���X�\�t�g
OutputBaseFilename=Setup
Compression=none
SolidCompression=no
LicenseFile=crescent\�z�z�t���[�錾�i�A���X�\�t�g�j.txt
AppCopyright=\crescent\readme.txt
UninstallDisplayIcon={app}\crescent\adv.exe
DisableWelcomePage=no
PrivilegesRequired=lowest

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Components]
Name: "main"; Description: "�Q�[���{�́i�K�{�j"; Flags: fixed
Name: "bonus"; Description: "�ǉ��p�b�N�iHD�e�N�X�`���Ȃǁj"; Types: full compact custom

[Tasks]
Name: "desktopicon"; Description: "�f�X�N�g�b�v�ɃV���[�g�J�b�g���쐬"; GroupDescription: "�ǉ��I�v�V����:"; Flags: checkedonce

[Files]
Source: "crescent\*"; DestDir: "{app}\crescent"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\CRESCENT MOON ������"; Filename: "{app}\crescent\adv.exe"
Name: "{userdesktop}\CRESCENT MOON ������"; Filename: "{app}\crescent\adv.exe"; Tasks: desktopicon
Name: "{group}\�A���C���X�g�[�� CRESCENT MOON ������"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\crescent\adv.exe"; Description: "CRESCENT MOON ������ ���N��"; Flags: nowait postinstall skipifsilent