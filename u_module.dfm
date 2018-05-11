object dm_module: Tdm_module
  OldCreateOrder = False
  Height = 283
  Width = 450
  object con1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'dbmasjid'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 144
    Top = 56
  end
  object qry_view: TUniQuery
    Connection = con1
    Left = 184
    Top = 56
  end
  object qry_edit: TUniQuery
    Connection = con1
    Left = 272
    Top = 16
  end
  object qry_post: TUniQuery
    Connection = con1
    Left = 264
    Top = 72
  end
  object qry_data: TUniQuery
    Connection = con1
    Options.FullRefresh = True
    Left = 280
    Top = 160
  end
  object qry_delete: TUniQuery
    Connection = con1
    Left = 320
    Top = 112
  end
  object uni_drv_1: TMySQLUniProvider
    Left = 128
    Top = 168
  end
  object ds_data: TUniDataSource
    DataSet = qry_data
    Left = 208
    Top = 128
  end
  object frx_dataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_kas=id_kas'
      'tanggal=tanggal'
      'ket=ket'
      'pemasukan=pemasukan'
      'pengeluaran=pengeluaran'
      'total_kas=total_kas'
      'user=user')
    DataSource = ds_data
    BCDToCurrency = False
    Left = 360
    Top = 192
  end
  object frxreport2: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43223.799378194400000000
    ReportOptions.LastChange = 43224.949056145840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 224
    Datasets = <
      item
        DataSet = frx_dataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 204.094620000000000000
        Width = 740.409927000000000000
        DataSet = frx_dataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1tanggal: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataField = 'tanggal'
          DataSet = frx_dataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1ket: TfrxMemoView
          Left = 79.370130000000000000
          Width = 313.700990000000000000
          Height = 26.456710000000000000
          DataField = 'ket'
          DataSet = frx_dataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."ket"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1pemasukan: TfrxMemoView
          Align = baLeft
          Left = 393.071120000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          DataField = 'pemasukan'
          DataSet = frx_dataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'Rp #,##;-Rp #,##;'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."pemasukan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1pengeluaran: TfrxMemoView
          Align = baLeft
          Left = 514.016080000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DataField = 'pengeluaran'
          DataSet = frx_dataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'Rp #,##;-Rp #,##;'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."pengeluaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1total_kas: TfrxMemoView
          Align = baLeft
          Left = 627.401980000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DataField = 'total_kas'
          DataSet = frx_dataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'Rp #,##;-Rp #,##;'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."total_kas"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 313.700990000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KETERANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 393.071120000000000000
          Width = 120.944960000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS MASUK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 514.016080000000000000
          Width = 113.385900000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS KELUAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 627.401980000000000000
          Width = 113.385900000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL KAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 393.071120000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'Rp #,##;-Rp #,##;'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."pemasukan">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 514.016080000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'Rp #,##;-Rp #,##;'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."pengeluaran">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Left = 627.401980000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = 'Rp #,##;-Rp #,##;'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."total_kas">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 393.071120000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL KAS MASJID')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo7: TfrxMemoView
          Align = baClient
          Width = 740.409927000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN KAS MASJID AL-BARKAH CIPUTAT PONCOL')
          ParentFont = False
        end
      end
    end
  end
end
