unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid2: TDBGrid;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Image1: TImage;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses Unit5,Unit7,Unit1;



procedure TForm4.Button1Click(Sender: TObject);
begin

 DataModule7.ADOTable1.Active:=false;
 DataModule7.ADOTable1.Active:=true;

 DataModule7.ADOTable2.Active:=false;
 DataModule7.ADOTable2.Active:=true;

end;

procedure TForm4.FormShow(Sender: TObject);
begin
Label1.Hide;
Label2.Hide;
Label3.Hide;
Label4.Hide;
Label5.Hide;
Label6.Hide;
Label7.Hide;
Label8.Hide;
DBEdit1.Hide;
DBEdit2.Hide;
DBEdit3.Hide;
DBEdit4.Hide;
DBEdit5.Hide;
DBEdit6.Hide;
DBEdit7.Hide;
DBEdit8.Hide;
SpeedButton5.Hide;
DataModule7.ADOTable1.Active:=false;
DataModule7.ADOTable1.Active:=true;
DataModule7.ADOTable2.Active:=false;
DataModule7.ADOTable2.Active:=true;

end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  DataModule7.Adotable1.Prior;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
DataModule7.Adotable1.Next;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
DataModule7.Adotable1.Delete;
DataModule7.Adotable2.Delete;
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
DataModule7.Adotable1.Edit;
DataModule7.Adotable2.Edit;

Label1.Show;
Label2.Show;
Label3.Show;
Label4.Show;
Label5.Show;
Label6.Show;
Label7.Show;
Label8.Show;
DBEdit1.Show;
DBEdit2.Show;
DBEdit3.Show;
DBEdit4.Show;
DBEdit5.Show;
DBEdit6.Show;
DBEdit7.Show;
DBEdit8.Show;
SpeedButton5.Show;

end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin

 DataModule7.Adotable1.Post;
 DataModule7.Adotable2.Post;
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
    Form5.Show;
    form4.Hide;
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TForm4.SpeedButton8Click(Sender: TObject);
begin
DataModule7.ADOTable1.First;
end;

procedure TForm4.SpeedButton9Click(Sender: TObject);
begin
DataModule7.ADOTable1.Last;
end;

end.
