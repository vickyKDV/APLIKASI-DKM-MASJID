program AplikasiDKM;

uses
  Forms,
  u_tambah in 'u_tambah.pas' {fm_tambah},
  u_main in 'u_main.pas' {Fm_main},
  u_module in 'u_module.pas' {dm_module: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aplikasi DKM Masjid';
  Application.CreateForm(TFm_main, Fm_main);
  Application.CreateForm(Tfm_tambah, fm_tambah);
  Application.CreateForm(Tdm_module, dm_module);
  Application.Run;
end.
