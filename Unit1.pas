unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Button3: TButton;
    DBEdit5: TDBEdit;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fiyat:Real;//global deðiþken


implementation

{$R *.dfm}
uses Unit2, Unit5,Unit7;




procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Form5.Show;
   Form1.Hide;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 ADOTable1.Insert;
ADOTable2.Insert;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);

begin
      if Form1.DBComboBox1.Text = 'Format' then fiyat:=100;
      if Form1.DBComboBox1.Text = 'Kasa Temizliði' then fiyat:=80;
      if Form1.DBComboBox1.Text = 'Anakart Deðiþimi' then fiyat:=300;
      if Form1.DBComboBox1.Text = 'Ekran Kartý Deðiþimi' then fiyat:=50;
      if Form1.DBComboBox1.Text = 'Ram Ekleme' then fiyat:=30;
      if Form1.DBComboBox1.Text = 'Isletim Sistemi Kurulumu' then fiyat:=20;

      DBEdit5.Text:= floattostr(fiyat)+' $';


  ADoTable1.Post;
  AdoTable2.Post;

  Form2.Show;
  Form1.Hide;
end;

end.
