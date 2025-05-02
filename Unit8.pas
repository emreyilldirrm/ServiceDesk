unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TForm8 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBEdit3: TDBEdit;
    Button6: TButton;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}
uses Unit7,Unit5;

procedure TForm8.Button1Click(Sender: TObject);
var

email,sifre:String;
begin
         email:=DBEdit1.Text;
 sifre:=DBEdit2.Text;



if (email=Edit1.Text) and (sifre=edit2.Text) then
begin
     Form5.Show;
     Form8.Hide;
end
else
begin
      ShowMessage('Þifre veya email hatalýdýr!')
end;


end;

procedure TForm8.Button2Click(Sender: TObject);
begin
    DataModule7.ADOTable3.next;
    DataModule7.ADOTable3.Refresh;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
DataModule7.ADOTable3.Prior;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
button1.Hide;
label1.Hide;
label2.Hide;
edit1.Hide;
edit2.Hide;
Button5.Hide;
 label3.show;
      label4.show;
      label5.show;
      edit3.show;
      edit4.show;
      DBEdit3.show;

      Button6.show;
Showmessage('ÞÝfreni deðiþtirebilmen için kullanýcý adýný girmen gereklidir.');

Edit3.SetFocus;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
if(edit3.Text=DBEdit1.text)then
begin
  DataModule7.ADOTable3.Edit;
  DBEdit3.Text:=Edit4.Text;
    DataModule7.ADOTable3.post;
    DataModule7.ADOTable3.Refresh;

      label3.Hide;
      label4.Hide;
      label5.Hide;
      edit3.Hide;
      edit4.Hide;
      DBEdit3.Hide;
         button1.show;
      Button6.Hide;

       Button5.show;

      label1.show;
      label2.show;
      edit1.show;
      edit2.show;
end
else
begin
  ShowMessage('Kullanýcý adýný yanlýþ girdin þifre deðiþtirilemedi!')
end;

end;

procedure TForm8.FormShow(Sender: TObject);
begin
      label3.Hide;
      label4.Hide;
      label5.Hide;
      edit3.Hide;
      edit4.Hide;
      DBEdit3.Hide;
      Button6.Hide;
end;

end.
