object Fm_main: TFm_main
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'APLIKASI DKM MASJID'
  ClientHeight = 521
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 65
    Align = alTop
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 791
    object lbl1: TLabel
      Left = 31
      Top = 26
      Width = 65
      Height = 18
      Caption = 'TANGGAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 445
      Top = 26
      Width = 24
      Height = 18
      Caption = 'S/D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn_cari: TSpeedButton
      AlignWithMargins = True
      Left = 804
      Top = 9
      Width = 148
      Height = 47
      Caption = 'CARI DATA'
      OnClick = btn_cariClick
    end
    object dtp1: TDateTimePicker
      Left = 119
      Top = 22
      Width = 297
      Height = 26
      Date = 43223.812305196760000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 43223.812305196760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = dtp1Change
    end
    object dtp2: TDateTimePicker
      Left = 493
      Top = 22
      Width = 297
      Height = 26
      Date = 43223.812305196760000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 43223.812305196760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = dtp2Change
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 461
    Width = 983
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 455
    ExplicitWidth = 791
    object btn_tambah: TSpeedButton
      AlignWithMargins = True
      Left = 875
      Top = 3
      Width = 105
      Height = 35
      Align = alRight
      Caption = 'Tambah Kas'
      OnClick = btn_tambahClick
      ExplicitLeft = 672
      ExplicitTop = 4
      ExplicitHeight = 33
    end
    object btn_refresh: TSpeedButton
      AlignWithMargins = True
      Left = 431
      Top = 3
      Width = 105
      Height = 35
      Align = alRight
      Caption = 'Refresh Data'
      OnClick = btn_refreshClick
      ExplicitLeft = 672
      ExplicitTop = 4
      ExplicitHeight = 33
    end
    object btn_edit: TSpeedButton
      AlignWithMargins = True
      Left = 764
      Top = 3
      Width = 105
      Height = 35
      Align = alRight
      Caption = 'Edit Kas'
      OnClick = btn_editClick
      ExplicitLeft = 571
      ExplicitTop = 2
      ExplicitHeight = 33
    end
    object btn_hapus: TSpeedButton
      AlignWithMargins = True
      Left = 653
      Top = 3
      Width = 105
      Height = 35
      Align = alRight
      Caption = 'Hapus Kas'
      OnClick = btn_hapusClick
      ExplicitLeft = 460
      ExplicitTop = 2
      ExplicitHeight = 33
    end
    object btn_print: TSpeedButton
      AlignWithMargins = True
      Left = 542
      Top = 3
      Width = 105
      Height = 35
      Align = alRight
      Caption = 'Print'
      OnClick = btn_printClick
      ExplicitLeft = 460
      ExplicitTop = 2
      ExplicitHeight = 33
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 502
    Width = 983
    Height = 19
    Panels = <
      item
        Text = 'USER : '
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitLeft = -8
    ExplicitTop = 445
    ExplicitWidth = 781
  end
  object dbgrid1: TDBGridEh
    Left = 0
    Top = 65
    Width = 983
    Height = 396
    Align = alClient
    AutoFitColWidths = True
    Color = clWhite
    ColumnDefValues.Title.TitleButton = True
    DataSource = dm_module.ds_data
    DynProps = <>
    EvenRowColor = clGradientActiveCaption
    FixedColor = clWhite
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clRed
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clWhite
    FooterParams.Font.Height = -15
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.RowHeight = 30
    FooterParams.HorzLineColor = clWhite
    FooterParams.VertLineColor = clWhite
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    BackgroundData.Placement = ipFillEh
    BackgroundData.Visible = True
    BackgroundData.ExcludeTitle = True
    BackgroundData.ExcludeIndicator = True
    BackgroundData.ExcludeFooter = True
    OddRowColor = clInactiveBorder
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghAutoFitRowHeight, dghExtendVertLines]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SearchPanel.Enabled = True
    SortLocal = True
    SumList.Active = True
    TabOrder = 1
    Columns = <
      item
        Alignment = taCenter
        DisplayFormat = 'dddd, dd MMMM yyyy'
        DynProps = <>
        EditButtons = <>
        FieldName = 'tanggal'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'TANGGAL'
        Width = 229
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'KETERANGAN'
        Width = 500
      end
      item
        DisplayFormat = 'Rp #,##;-Rp #,##;'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pemasukan'
        Footer.DisplayFormat = 'Rp #,##;-Rp #,##;'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'KAS MASUK'
        Width = 170
      end
      item
        DisplayFormat = 'Rp #,##;-Rp #,##;'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pengeluaran'
        Footer.DisplayFormat = 'Rp #,##;-Rp #,##;'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'KAS KELUAR'
        Width = 170
      end
      item
        DisplayFormat = 'Rp #,##;-Rp #,##;'
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_kas'
        Footer.DisplayFormat = 'Rp #,##;-Rp #,##;'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL KAS'
        Width = 170
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
