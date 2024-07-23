unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1; 

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
  theText: string;
begin
  theText := '';
  if ParamCount > 4 then
  begin
    for i := 5 to ParamCount do
    begin
      theText := theText + ParamStr(i) + ' ';
    end;
    theText := StringReplace(theText, '\r', #13#10, [rfReplaceAll]);
    Form1.Memo1.Text := theText;
  end;
end;

end.

