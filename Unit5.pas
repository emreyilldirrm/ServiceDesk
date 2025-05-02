unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
   uses Unit1, Unit4;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
    form1.Show;
    form5.hide ;

end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
    form4.Show;
    form5.hide ;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
