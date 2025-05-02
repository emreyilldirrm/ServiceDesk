unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    ProgressBar1: TProgressBar;
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}
uses Unit1,Unit8;
procedure TForm6.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
      if ProgressBar1.Position = 99 then
      begin
          Form6.Hide;
          Form8.Show;
      end;
end;

end.
