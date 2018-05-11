unit u_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  ComCtrls, Buttons, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,EhlibUnidac, StdCtrls,
  EhLibJPegImage, jpeg, dxGDIPlusClasses;

type
  TFm_main = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    stat1: TStatusBar;
    btn_tambah: TSpeedButton;
    dbgrid1: TDBGridEh;
    btn_refresh: TSpeedButton;
    btn_edit: TSpeedButton;
    btn_hapus: TSpeedButton;
    btn_print: TSpeedButton;
    dtp1: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    dtp2: TDateTimePicker;
    btn_cari: TSpeedButton;
    procedure btn_tambahClick(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure refresh_data;
    procedure btn_editClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_cariClick(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
  private
    { Private declarations }
  public
   nama_user:string;
    { Public declarations }
  end;

var
  Fm_main: TFm_main;

implementation

uses
  u_module, u_tambah;

{$R *.dfm}

procedure TFm_main.btn_cariClick(Sender: TObject);
var
tgl_awal,tgl_akhir:string;
begin
tgl_awal := FormatDateTime('yyyy-MM-dd',dtp1.Date);
tgl_akhir := FormatDateTime('yyyy-MM-dd',dtp2.Date);
with dm_module.qry_data do
begin
dbgrid1.StartLoadingStatus('Mencari data Kas Masjid');
  Close;
  SQl.Clear;
  SQl.Add('select * from v_kas where tanggal BETWEEN '+QuotedStr(tgl_awal)+' AND '+QuotedStr(tgl_akhir));
  Open;
  dbgrid1.FinishLoadingStatus(1000);
end;
end;

procedure TFm_main.btn_editClick(Sender: TObject);
begin
if dm_module.qry_data.IsEmpty then
ShowMessage('Data yang ingin di Edit tidak ada!!')
else
begin
fm_tambah.act_bersihall.Execute;
fm_tambah.id_kas                := dm_module.qry_data.FieldByName('id_kas').AsString;
fm_tambah.dtp_tanggal.Date      := dm_module.qry_data.FieldByName('tanggal').AsDateTime;
fm_tambah.mmo_keterangan.Text   := dm_module.qry_data.FieldByName('ket').AsString;
fm_tambah.edt_pemasukan.Value   := dm_module.qry_data.FieldByName('pemasukan').AsFloat;
fm_tambah.edt_pengeluaran.Value := dm_module.qry_data.FieldByName('pengeluaran').AsFloat;
fm_tambah.Caption               := 'EDIT KAS';
fm_tambah.showmodal;
end;
end;

procedure TFm_main.btn_hapusClick(Sender: TObject);
begin
if dm_module.qry_data.IsEmpty then
ShowMessage('Data yang ingin di Hapus tidak ada!!')
else
begin
if MessageDlg('Yakin ingin mengHapus Kas ??',  mtInformation, [mbYes, mbNo],
  0) = mrYes then
begin
with dm_module.qry_delete do
begin
  Close;
  SQl.Clear;
  SQL.Add('delete from tbl_kas_masjid where id_kas = '+QuotedStr(dm_module.qry_data.FieldByName('id_kas').AsString));
  ExecSQL;
  ShowMessage('Data kas Berhasil di hapus...');
  refresh_data;
end;
end;
end;
end;

procedure TFm_main.btn_printClick(Sender: TObject);
begin
if dm_module.qry_data.IsEmpty then
ShowMessage('Data yang ingin di Print tidak ada!!')
else
begin
dm_module.frxreport2.ShowReport(true);
end;
end;

procedure TFm_main.btn_refreshClick(Sender: TObject);
begin
refresh_data;
end;

procedure TFm_main.btn_tambahClick(Sender: TObject);
begin
fm_tambah.act_bersihall.Execute;
fm_tambah.Caption := 'TAMBAH KAS';
fm_tambah.showmodal;
end;

procedure TFm_main.dtp1Change(Sender: TObject);
begin
dtp2.Date := dtp1.Date+6;
end;

procedure TFm_main.dtp2Change(Sender: TObject);
begin
if dtp2.Date < dtp1.Date then
begin
ShowMessage('Tanggal akhir harus lebih atau sama dengan tanggal awal..');
dtp2.Date := dtp1.Date;
end;
end;

procedure TFm_main.refresh_data;
begin
with dm_module.qry_data do
begin
if Active = True then
begin
  Refresh;
  dbgrid1.SumList.Active := False;
  dbgrid1.SumList.Active := True;
end;
//  Close;
//  SQl.Clear;
//  SQL.Add('select * from v_kas');
//  Open;

end;
end;

end.
