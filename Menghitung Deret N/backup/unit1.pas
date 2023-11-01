unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit; // Tambahkan Edit3
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function HitungFaktorial(N: Integer): Int64;
begin
  if N <= 1 then
    Result := 1
  else
    Result := N * HitungFaktorial(N - 1);
end;

function HitungJumlahDeret(N: Integer): Int64;
var
  i: Integer;
  Total: Int64;
begin
  Total := 0;
  for i := 1 to N do
    Total := Total + i; // Menghitung jumlah deret N
  Result := Total;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  N: Integer;
begin
  N := StrToInt(Edit1.Text);
  if N < 0 then
    ShowMessage('Masukkan angka non-negatif')
  else
    begin
      Edit2.Text := IntToStr(HitungFaktorial(N)); // Menampilkan hasil faktorial di Edit2
      Edit3.Text := IntToStr(HitungJumlahDeret(N)); // Menampilkan hasil jumlah deret N di Edit3
      Label1.Caption := 'N'; // Mempertahankan teks "N" di Label1
    end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

end.

