unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SelectionSortLabel: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public


  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

const
  SIZE = 9;

var
  arr: array[1..SIZE] of Integer = (24, 77, 5, 37, 26, 50, 79, 20, 4);
  i, j, min, temp: Integer;

procedure SelectionSort;
begin
  for i := 1 to SIZE - 1 do
  begin
    min := i;
    for j := i + 1 to SIZE do
    begin
      if arr[j] < arr[min] then
        min := j;
    end;

    if min <> i then
    begin
      temp := arr[i];
      arr[i] := arr[min];
      arr[min] := temp;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);

begin
  SelectionSort;
  Label3.Caption := '';
  for i := 1 to SIZE do
    Label3.Caption := Label3.Caption + IntToStr(arr[i]) + ' ';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.

