object fmrCadastro: TfmrCadastro
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cliente'
  ClientHeight = 543
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 297
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    object pnlBottom: TPanel
      Left = 1
      Top = 251
      Width = 622
      Height = 41
      Align = alBottom
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 10
        Top = 3
        Width = 129
        Height = 32
        Caption = 'Cadastrar Cliente'
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDEAF3E4ADD59271B63E
          4CA20C3F9C004CA30D70B53EAED592EAF3E4FEFEFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F7ECA2CF8154
          AB1452B20C64C2206FCD2B72CF2E6FCC2B64C21F51B20C54AB14A3CF82F1F7EE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE0EE
          D77FBF5057B5116DCB2773D02F72CD2F72CD2E73CE2F72CD2E72CD2F73D02F6D
          CB2857B6127FBF51E1EED7FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFEBF4E582C3535DBE1771CE2D71CC2E71CB2E72CD2F68C5245DBB1868C5
          2472CD2F71CB2E71CC2E71CE2D5DBD1582C453EBF4E6FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFAFBF9A4D2825BBC1470CC2D71CC2E71CC2E71CC2E6BCB25
          7EC74794C1727EC6476BCB2571CC2E71CC2E71CC2E70CD2C5BBD14A4D282FAFB
          F9FFFFFFFFFFFF000000FFFFFFFFFFFFDFEED363BC226CCC2771CC2E71CC2E71
          CC2E71CC2F61C717ACDC87FFF5FFACDB8761C71771CC2F71CC2E71CC2E71CC2E
          6CCC2763BC22DFEED4FFFFFFFFFFFF000000FFFFFFFEFDFEB0D9925DC31271CD
          2E71CB2E70CB2E70CB2E71CC2F60C715AEDD89FFF8FFAEDC8960C71571CC2F70
          CB2E70CB2E71CB2E71CD2E5DC311B1D993FEFDFEFFFFFF000000FFFFFFF7FBF4
          7DC74669CA2171CC2E71CC2E73D02F73D02F74D03163CB17AEDE88FFF7FFAEDD
          8863CB1774D03173D02F73D02F71CC2E71CC2E68CA207DC747F7FBF4FFFFFF00
          0000FFFFFFF3FAEF5EBF166FCB2A72CC2F67C42357B61355B51056B51243AE00
          9ED179FFFAFF9ED07943AE0056B51255B51057B61367C42372CC2F6FCB2A5FBF
          18F3FAEEFFFFFF000000FFFFFFF3FAEF5CC21170CB2C6CCC2680CA47A3CC83A4
          CA85A3CA8399C575C7DDB3FFF7FFC7DDB399C575A3CA83A4CA85A3CC8380CA47
          6CCC2670CB2C5CC211F3FAEFFFFFFF000000FFFFFFF4FBEF5CC41170CB2D64C7
          1CA3DA79FFF9FFFFFAFFFFFAFFFFFAFFFFF4FFF0EFEAFFF4FFFFFAFFFFFAFFFF
          FAFFFFF9FFA3DA7964C71C70CB2C5EC211F4FAEFFFFFFF000000FFFFFFF4FBEE
          60C41670CB2B6BCA2583D14AACDC88AEDC88ACDC87A4D97ACDE6B6FEF2FFCDE5
          B6A4D97AACDC87AEDC88ACDC8883D14A6BCA2570CB2B60C417F4FBEEFFFFFF00
          0000FFFFFFF8FCF480D04569C92171CC2F6BCA2561C61660C61561C7174FC200
          A4DA7BFFF7FFA4D97B4FC20061C71760C61561C6166BCA2571CC2F69C92180D0
          46F8FCF4FFFFFF000000FFFFFFFDFEFDB4E4915EC41270CB2E71CC2E71CC2F71
          CC2F72CC3061C717ADDC88FFF7FFADDB8861C71772CC3071CC2F71CC2F71CC2E
          70CB2D5EC412B4E492FDFEFDFFFFFF000000FFFFFFFFFFFFE2F4D568C8216CC9
          2771CB2E71CC2E71CC2E71CC2F60C715AEDD89FFF8FFAEDB8960C71571CC2F71
          CC2E71CC2E71CB2E6CC92768C822E2F4D5FFFFFFFFFFFF000000FFFFFFFFFFFF
          FAFDF7A7DF7E61C6176FCA2B71CC2E71CC2E71CC2F61C717ACDD87FFF6FFACDB
          8761C71771CC2F71CC2E71CC2E6FCA2B61C617A8DF80FAFDF8FFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFEDF8E389D45263C61A6FCB2C71CC2E71CC2E6ACA25
          83D149A2D97883D0496ACA2571CC2E71CC2E6FCB2C63C61A89D451EDF8E5FFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE1F3D289D45261C5176C
          CA2771CB2D72CC2F6BCA2564C81C6BCA2572CC2F71CB2D6CCA2761C51789D452
          E0F3D3FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFECF8E5A7DE8068C8215EC41367C9216ECB2A70CB2D6ECB2A67C9215EC41368
          C821A8DF80ECF8E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF9FDF7E3F4D6B2E38F84D24A65C7205EC40F66C7
          2084D24AB3E391E3F4D6FAFDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDF8FCF5
          F4FBF0F3FAEEF4FBF0F8FCF5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
    object gbCadastro: TGroupBox
      Left = 1
      Top = 1
      Width = 622
      Height = 250
      Align = alClient
      Caption = 'Dados do Cadastro'
      TabOrder = 1
      object edtCPF: TLabeledEdit
        Tag = 1
        Left = 430
        Top = 44
        Width = 109
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'CPF'
        MaxLength = 11
        NumbersOnly = True
        TabOrder = 2
      end
      object edtEmail: TLabeledEdit
        Tag = 1
        Left = 149
        Top = 92
        Width = 257
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Email'
        TabOrder = 4
      end
      object edtIdentidade: TLabeledEdit
        Tag = 1
        Left = 297
        Top = 44
        Width = 109
        Height = 21
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.Caption = 'Identidade'
        NumbersOnly = True
        TabOrder = 1
      end
      object edtNome: TLabeledEdit
        Tag = 1
        Left = 16
        Top = 44
        Width = 257
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 0
      end
      object edtTelefone: TLabeledEdit
        Tag = 1
        Left = 16
        Top = 92
        Width = 109
        Height = 21
        EditLabel.Width = 42
        EditLabel.Height = 13
        EditLabel.Caption = 'Telefone'
        TabOrder = 3
      end
      object gbEndereco: TGroupBox
        Left = 2
        Top = 136
        Width = 618
        Height = 112
        Align = alBottom
        Caption = 'Endere'#231'o'
        TabOrder = 5
        object edtCep: TLabeledEdit
          Tag = 1
          Left = 14
          Top = 32
          Width = 75
          Height = 21
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = 'Cep'
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 0
          OnExit = edtCepExit
        end
        object edtLogradouro: TLabeledEdit
          Tag = 1
          Left = 104
          Top = 32
          Width = 329
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Logradouro'
          TabOrder = 1
        end
        object edtNumero: TLabeledEdit
          Tag = 1
          Left = 448
          Top = 32
          Width = 53
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero'
          NumbersOnly = True
          TabOrder = 2
        end
        object edtComplemento: TLabeledEdit
          Tag = 2
          Left = 515
          Top = 32
          Width = 91
          Height = 21
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento'
          TabOrder = 3
        end
        object edtBairro: TLabeledEdit
          Tag = 1
          Left = 14
          Top = 73
          Width = 121
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          TabOrder = 4
        end
        object edtCidade: TLabeledEdit
          Tag = 1
          Left = 160
          Top = 73
          Width = 161
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade'
          TabOrder = 5
        end
        object edtEstado: TLabeledEdit
          Tag = 1
          Left = 343
          Top = 73
          Width = 42
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Estado'
          MaxLength = 2
          TabOrder = 6
        end
        object edtPais: TLabeledEdit
          Tag = 1
          Left = 408
          Top = 73
          Width = 121
          Height = 21
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = 'Pa'#237's'
          TabOrder = 7
        end
      end
    end
  end
  object pnlBut: TPanel
    Left = 0
    Top = 297
    Width = 628
    Height = 246
    Align = alClient
    TabOrder = 1
    object dbgrdCadastro: TDBGrid
      Left = 1
      Top = 1
      Width = 626
      Height = 207
      Align = alClient
      DataSource = dsCadastro
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object pnEnviarEmail: TPanel
      Left = 1
      Top = 208
      Width = 626
      Height = 37
      Align = alBottom
      TabOrder = 1
      object lblEnviarEmail: TLabel
        Left = 8
        Top = 9
        Width = 86
        Height = 13
        Caption = 'Enviar email para:'
      end
      object edtEnviarEmail: TEdit
        Left = 100
        Top = 6
        Width = 209
        Height = 21
        TabOrder = 0
      end
      object bntEnviarEmail: TBitBtn
        Left = 315
        Top = 6
        Width = 218
        Height = 25
        Caption = 'Enviar email com dados dos clientes'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC8C8C8F8
          F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C60000001C1C1C9595
          95F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F40C0C0C0000000000001D1D1D
          909090F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E5E5E0000000000000000000000001D
          1D1D909090F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0000000000000000000000000000000000
          001E1E1E909090F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFE212121000000000000000000000000000000000000
          0000001E1E1E909090F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF7D7D7D00000000000000000000000000000000000000000000
          00000000001F1F1F909090F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE4E4E47878784E4E4E2323230202020000000000000000000000000000
          000000000000002222229E9E9EFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF6F6F6CDCDCDA3A3A37878784E4E4E232323020202
          000000000000000000242424DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF6F6F6CDCDCDA3A3A37878784E4E4E23232302020200000000
          0000000000161616D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFE4E4E47878784E4E4E
          2323230202020000000000000000000000000000000000000000001515158989
          89F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7D7D00000000000000000000
          00000000000000000000000000000000001313137F7F7FF0F0F0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE2121210000000000000000000000000000
          000000000000001313137F7F7FF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFBDBDBD000000000000000000000000000000000000121212
          7F7F7FF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF5E5E5E0000000000000000000000000D0D0D777777EFEFEFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
          0C0C0C0000000000000D0D0D777777EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000000010
          1010808080F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDBBBBBBEFEFEFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        TabOrder = 1
        OnClick = bntEnviarEmailClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 576
    Top = 8
    object Sair1: TMenuItem
      Caption = 'Arquivo'
      object Sair2: TMenuItem
        Caption = 'Sair'
        OnClick = Sair2Click
      end
    end
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsCadastroIndex1'
      end>
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 361
    object cdsCadastroNome: TStringField
      DisplayWidth = 40
      FieldName = 'Nome'
      Size = 100
    end
    object cdsCadastroIdentidade: TStringField
      DisplayWidth = 9
      FieldName = 'Identidade'
      Size = 9
    end
    object cdsCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsCadastroTelefone: TStringField
      FieldName = 'Telefone'
    end
    object cdsCadastroEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object cdsCadastroCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsCadastroLogradouro: TStringField
      DisplayWidth = 40
      FieldName = 'Logradouro'
      Size = 200
    end
    object cdsCadastroNumero: TStringField
      FieldName = 'Numero'
      Size = 8
    end
    object cdsCadastroComplemento: TStringField
      FieldName = 'Complemento'
    end
    object cdsCadastroBairro: TStringField
      DisplayWidth = 20
      FieldName = 'Bairro'
      Size = 60
    end
    object cdsCadastroCidade: TStringField
      DisplayWidth = 40
      FieldName = 'Cidade'
      Size = 100
    end
    object cdsCadastroEstado: TStringField
      DisplayWidth = 20
      FieldName = 'Estado'
      Size = 100
    end
    object cdsCadastroPais: TStringField
      DisplayWidth = 20
      FieldName = 'Pais'
      Size = 100
    end
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 417
    Top = 409
  end
  object RESTClientCep: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br'
    Params = <>
    Left = 536
    Top = 360
  end
  object RESTRequestCep: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientCep
    Params = <>
    Resource = 'ws/31560220/json'
    Response = RESTResponseCEP
    Left = 536
    Top = 408
  end
  object RESTResponseCEP: TRESTResponse
    ContentType = 'application/json'
    Left = 536
    Top = 456
  end
end
