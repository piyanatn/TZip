unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm9 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
uses System.zip;
procedure TForm9.Button1Click(Sender: TObject);

var
zipFile :TZipFile;
filename : String;
begin
  zipFile := TZipFile.Create;
  try
    filename := 'D:\Delphi XE 10.3 Projects\ZipExtract\Win32\Debug\ReadMe.zip';
    if zipFile.IsValid(filename) then begin
      zipFile.Open(filename, zmRead);
      zipFile.ExtractAll('D:\Delphi XE 10.3 Projects\ZipExtract\Win32\Debug\');
    end;
  finally
    zipFile.Free;
  end;
end;

end.
