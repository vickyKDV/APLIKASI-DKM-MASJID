unit u_module;

interface

uses
  SysUtils, Classes, UniProvider, MySQLUniProvider, DB, MemDS, DBAccess, Uni,
  frxClass, frxDBSet;

type
  Tdm_module = class(TDataModule)
    con1: TUniConnection;
    qry_view: TUniQuery;
    qry_edit: TUniQuery;
    qry_post: TUniQuery;
    qry_data: TUniQuery;
    qry_delete: TUniQuery;
    uni_drv_1: TMySQLUniProvider;
    ds_data: TUniDataSource;
    frx_dataset1: TfrxDBDataset;
    frxreport2: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_module: Tdm_module;

implementation

{$R *.dfm}

end.
