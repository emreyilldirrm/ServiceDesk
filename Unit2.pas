unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses Unit5,Unit1;

procedure TForm2.FormShow(Sender: TObject);
begin
           Label2.Caption:=floattostr(fiyat)+'$';
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin

      Form5.Show;
      Form2.Hide;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin

     Application.Terminate;
end;

end.
