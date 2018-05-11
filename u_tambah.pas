unit u_tambah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit,
  StdCtrls, ComCtrls, ActnList;

type
  Tfm_tambah = class(TForm)
    grp1: TGroupBox;
    dtp_tanggal: TDateTimePicker;
    lbl1: TLabel;
    mmo_keterangan: TMemo;
    lbl2: TLabel;
    edt_pemasukan: TsCurrencyEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edt_pengeluaran: TsCurrencyEdit;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    act_1: TActionList;
    act_simpan: TAction;
    act_bersihall: TAction;
    procedure act_simpanExecute(Sender: TObject);
    procedure act_bersihallExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
  public
  id_kas :string;
    { Public declarations }
  end;

var
  fm_tambah: Tfm_tambah;

implementation

uses
  u_main, u_module;

{$R *.dfm}

procedure Tfm_tambah.act_bersihallExecute(Sender: TObject);
begin
edt_pemasukan.Clear;
edt_pengeluaran.Clear;
mmo_keterangan.Clear;
dtp_tanggal.Date := now;
id_kas := EmptyStr;
end;

procedure Tfm_tambah.act_simpanExecute(Sender: TObject);
var
tgl:string;
begin
tgl := FormatDateTime('yyyy-MM-dd',dtp_tanggal.Date);
with dm_module.qry_post do
begin
  if Self.Caption = 'TAMBAH KAS' then
  begin
  Close;
  SQl.Clear;
  SQl.Add('Insert into tbl_kas_masjid values (null');
  SQL.Add(','+QuotedStr(tgl));
  SQL.Add(','+QuotedStr(mmo_keterangan.Text));
  SQL.Add(','+QuotedStr(edt_pemasukan.Text));
  SQL.Add(','+QuotedStr(edt_pengeluaran.Text));
  SQL.Add(','+QuotedStr(Fm_main.nama_user)+')');
  ExecSQL;
  ShowMessage('Data kas tersimpan');
  case MessageDlg('Tambah Data Kas lagi ?',  mtInformation, [mbYes, mbNo], 0) of
    mrYes:
    begin
    act_bersihall.Execute;
    end;
    mrNo:
    begin
    Self.Close;
    act_bersihall.Execute;
    end;
  end;
  end
  else
  if Self.Caption = 'EDIT KAS' then
  begin
  Close;
  SQl.Clear;
  SQl.Add('Replace into tbl_kas_masjid values ('+QuotedStr(id_kas));
  SQL.Add(','+QuotedStr(tgl));
  SQL.Add(','+QuotedStr(mmo_keterangan.Text));
  SQL.Add(','+QuotedStr(edt_pemasukan.Text));
  SQL.Add(','+QuotedStr(edt_pengeluaran.Text));
  SQL.Add(','+QuotedStr(Fm_main.nama_user)+')');
  ExecSQL;
    ShowMessage('Data kas berhasil di ubah');
    Self.Close;
    act_bersihall.Execute;
  end;
  Fm_main.refresh_data;
  end;
end;

procedure Tfm_tambah.btn1Click(Sender: TObject);
begin
if mmo_keterangan.Text = EmptyStr then
ShowMessage('Isi keterangan')
else
if (edt_pemasukan.Value = 0) and (edt_pengeluaran.Value = 0) then
ShowMessage('Pengeluaran atau Pemasukan harus di isi salah satu')
else
act_simpan.Execute;
end;

end.
