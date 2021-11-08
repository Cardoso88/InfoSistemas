unit unMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, Datasnap.DBClient, IdText,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdAttachmentMemory,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, XML.XMLDoc, Xml.XMLIntf,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdAttachment;

type
  TfmrCadastro = class(TForm)
    pnlTop: TPanel;
    pnlBut: TPanel;
    pnlBottom: TPanel;
    dbgrdCadastro: TDBGrid;
    edtNome: TLabeledEdit;
    edtIdentidade: TLabeledEdit;
    edtTelefone: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtCPF: TLabeledEdit;
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    gbCadastro: TGroupBox;
    gbEndereco: TGroupBox;
    edtCep: TLabeledEdit;
    edtLogradouro: TLabeledEdit;
    edtNumero: TLabeledEdit;
    edtComplemento: TLabeledEdit;
    edtBairro: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtEstado: TLabeledEdit;
    edtPais: TLabeledEdit;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    BitBtn1: TBitBtn;
    cdsCadastroNome: TStringField;
    cdsCadastroIdentidade: TStringField;
    cdsCadastroCPF: TStringField;
    cdsCadastroTelefone: TStringField;
    cdsCadastroEmail: TStringField;
    cdsCadastroCEP: TStringField;
    cdsCadastroLogradouro: TStringField;
    cdsCadastroNumero: TStringField;
    cdsCadastroComplemento: TStringField;
    cdsCadastroBairro: TStringField;
    cdsCadastroCidade: TStringField;
    cdsCadastroEstado: TStringField;
    cdsCadastroPais: TStringField;
    RESTClientCep: TRESTClient;
    RESTRequestCep: TRESTRequest;
    RESTResponseCEP: TRESTResponse;
    pnEnviarEmail: TPanel;
    lblEnviarEmail: TLabel;
    edtEnviarEmail: TEdit;
    bntEnviarEmail: TBitBtn;
    procedure Sair2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure bntEnviarEmailClick(Sender: TObject);
    procedure IdSMTPConnected(Sender: TObject);
  private
    { Private declarations }
    function isCPF(CPF: string): boolean;
    function ValidarCampos: boolean;
    function ValidarEmail(Email: String): boolean;
    procedure DadosCEP;
    procedure LimparCampos;
    function GerarXML: TMemoryStream;
    procedure EnviarEmail;
  public
    { Public declarations }
  end;

var
  fmrCadastro: TfmrCadastro;

implementation

uses
  System.JSON.Readers, System.JSON.Types;

{$R *.dfm}

procedure TfmrCadastro.BitBtn1Click(Sender: TObject);
begin
  if ValidarCampos then
  begin
    with cdsCadastro do
    begin
        Append;
        FieldByName('Nome').AsString := edtNome.Text;
        FieldByName('Identidade').AsString := edtIdentidade.Text;
        FieldByName('CPF').AsString := edtCPF.Text;
        FieldByName('Telefone').AsString := edtTelefone.Text;
        FieldByName('Email').AsString := edtEmail.Text;
        FieldByName('CEP').AsString := edtCep.Text;
        FieldByName('Logradouro').AsString := edtLogradouro.Text;
        FieldByName('Numero').AsString := edtNumero.Text;
        FieldByName('Complemento').AsString := edtComplemento.Text;
        FieldByName('Bairro').AsString := edtBairro.Text;
        FieldByName('Cidade').AsString := edtCidade.Text;
        FieldByName('Estado').AsString := edtEstado.Text;
        FieldByName('Pais').AsString := edtPais.Text;
        Post;

        LimparCampos;
    end;
  end;
end;

procedure TfmrCadastro.bntEnviarEmailClick(Sender: TObject);
begin
  //valida se existe cadastro para ser enviado
  if cdsCadastro.IsEmpty then
  begin
    MessageDlg('Cadastre um cliente para enviar o email', mtWarning, [mbOk], 0);
    Abort;
   end;

  //valida email destinatario
  if not ValidarEmail(edtEnviarEmail.Text) then
  begin
    MessageDlg('Email inválido, digite um email válido!', mtWarning, [mbOk], 0);
    Abort;
  end;

  //envia email
  if MessageDlg('Deseja enviar email para: ' + edtEnviarEmail.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    EnviarEmail;
  end;

end;

procedure TfmrCadastro.DadosCEP;
var
  JasonStringR : TStringReader;
  JasonTextR : TJsonTextReader;
begin
  RESTRequestCep.Resource := 'ws/' + edtCep.Text + '/json';
  RESTRequestCep.Execute;

  if RESTResponseCEP.StatusCode = 200 then
  begin
    JasonStringR := TStringReader.Create(RESTResponseCEP.Content);
    JasonTextR := TJsonTextReader.Create(JasonStringR);

    try
    while JasonTextR.Read do
      begin
        if (LowerCase(JasonTextR.Path) = 'erro')  then
        begin
          ShowMessage('CEP não encontrado');
          abort;
        end;

        case JasonTextR.TokenType of
          TJsonToken.String:
            begin
              if (LowerCase(JasonTextR.Path) = 'logradouro')  then
              begin
                edtLogradouro.Text := JasonTextR.Value.ToString;
              end;

              if (LowerCase(JasonTextR.Path)= 'complemento')  then
              begin
                edtComplemento.Text := JasonTextR.Value.ToString;
              end;

              if (LowerCase(JasonTextR.Path) = 'bairro')  then
              begin
                edtBairro.Text := JasonTextR.Value.ToString;
              end;

              if (LowerCase(JasonTextR.Path) = 'localidade')  then
              begin
                edtCidade.Text := JasonTextR.Value.ToString;
              end;

              if (LowerCase(JasonTextR.Path) = 'uf')  then
              begin
                edtEstado.Text := JasonTextR.Value.ToString;
              end;

              edtPais.Text := 'Brasil';

            end;
        end;
      end;
      edtNumero.SetFocus;
    finally
      JasonStringR.Free;
      JasonTextR.Free;
    end;
  end;
end;

procedure TfmrCadastro.edtCepExit(Sender: TObject);
begin
  if (edtCep.Text <> EmptyStr) and (Length(edtCep.Text) = 8) then
    DadosCep
  else
    ShowMessage('Cep inválido, não foi possível buscar dados do cep')
end;

procedure TfmrCadastro.EnviarEmail;
var
   Stream: TStream;
   XML: IXMLDocument;
   idMessage: TIdMessage;
   IdText: TIdText;
   idSMTP: TIdSMTP;
   Attachment: TIdAttachmentMemory;
   IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
   Texto: String;
begin
  try
    Screen.Cursor:= crHourGlass;
    bntEnviarEmail.Enabled:= false;
    XML := TXMLDocument.Create(nil);
    XML.LoadFromStream(GerarXML);

    Texto := '<b>Segue anexo lista de clientes em xml</b><br/><br/>';

    try
       IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
       IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
       IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

       idMessage := TIdMessage.Create(nil);
       idMessage.CharSet := 'utf-8';
       idMessage.Encoding := meMIME;
       idMessage.From.Name := 'Cadastro de Cliente';
       idMessage.From.Address := 'alexandre.infosistemas@gmail.com';
       idMessage.Priority := mpNormal;
       idMessage.Subject := 'Lista de Clientes Cadastrados';

       idMessage.Recipients.Clear;
       idMessage.Recipients.Add;
       idMessage.Recipients.EMailAddresses := edtEnviarEmail.Text;

       idText := TIdText.Create(idMessage.MessageParts);
       idText.Body.Add(texto);
       IdText.ContentType := 'text/html; text/plain; charset=iso-8859-1';

       IdSMTP := TIdSMTP.Create(nil);
       IdSMTP.IOHandler := IdSSLIOHandlerSocket;
       IdSMTP.UseTLS := utUseImplicitTLS;
       IdSMTP.AuthType := satDefault;
       IdSMTP.Host := 'smtp.gmail.com';
       IdSMTP.Port := 465;
       IdSMTP.Username := 'alexandre.infosistemas@gmail.com';
       IdSMTP.Password := 'IufG5xX#%';

       Attachment := TIdAttachmentMemory.Create(idMessage.MessageParts);
       Attachment.ContentType := 'application/xml';
       Attachment.FileName := 'Cadastro.xml';
       stream := Attachment.PrepareTempStream;
       try
          XML.SaveToStream(stream);
       finally
          Attachment.FinishTempStream;
       end;

       IdSMTP.Connect;
       IdSMTP.Authenticate;

       if IdSMTP.Connected then
       begin
          try
             IdSMTP.Send(idMessage);
          except on
             E: Exception do
                raise Exception.Create('Erro ao enviar email.');
          end;
       end;

       if IdSMTP.Connected then
          IdSMTP.Disconnect;

      Screen.Cursor:= crDefault;
      bntEnviarEmail.Enabled:= true;
      MessageDlg('Email enviado com sucesso!', mtInformation, [mbOk], 0);

    finally
       UnLoadOpenSSLLibrary;

       FreeAndNil(idMessage);
       FreeAndNil(IdSSLIOHandlerSocket);
       FreeAndNil(idSMTP);
    end;
  except
    on e: Exception do
       raise Exception.Create(e.Message);
  end;
end;

procedure TfmrCadastro.FormCreate(Sender: TObject);
begin
  cdsCadastro.CreateDataSet();
  cdsCadastro.Open();
end;

function TfmrCadastro.GerarXML: TMemoryStream;
var
   NodeRoot, NodeCliente, NodeRegistro: IXMLNode;
   XML: IXMLDocument;
   MemorySteam: TMemoryStream;
   i: Integer;
begin
  try
    XML := NewXMLDocument;
    XML.Encoding := 'utf-8';
    XML.Options := [doNodeAutoIndent];
    NodeRoot := XML.AddChild('ClienteCadastro');

    cdsCadastro.First;
    while not cdsCadastro.Eof do
    begin
      NodeCliente := NodeRoot.AddChild('Cliente');
      for i := 0 to cdsCadastro.FieldDefs.Count -1 do
      begin
         NodeRegistro := NodeCliente.AddChild(cdsCadastro.FieldDefs.Items[i].Name);
         NodeRegistro.Text := cdsCadastro.FieldByName(cdsCadastro.FieldDefs.Items[i].Name).AsString;
      end;
      cdsCadastro.next;
    end;
//    XML.SaveToFile('C:\teste\Teste.xml');
    MemorySteam := TMemoryStream.Create;
    XML.SaveToStream(MemorySteam);
    Result := MemorySteam;
  except
    on e: Exception do
       raise Exception.Create('Erro ao gerar anexo.');
  end;
end;

procedure TfmrCadastro.IdSMTPConnected(Sender: TObject);
begin

end;

// função validar cpf copiada na internet link: https://www.devmedia.com.br/validando-o-cpf-em-uma-aplicacao-delphi/22180
function TfmrCadastro.isCPF(CPF: string): boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              isCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;
end;

procedure TfmrCadastro.LimparCampos;
var
  i :Integer;
begin
  for i:=0 to (fmrCadastro.ComponentCount -1) do
  begin
    if (fmrCadastro.Components[i] is TLabeledEdit) //Valida se o campo é do tipo TLabeledEdit
      and ((fmrCadastro.Components[i] as TLabeledEdit).tag > 0) then//Campos TLabeledEdit com tag > 0 serao limpado o seu texto
    begin
      (fmrCadastro.Components[i] as TLabeledEdit).Text := EmptyStr;
    end;
  end;
end;

procedure TfmrCadastro.Sair2Click(Sender: TObject);
begin
  close;
end;

function TfmrCadastro.ValidarCampos: boolean;
var
  i :Integer;
  Campos :TStrings;
begin
  try
    Campos := TStringList.Create;
    for i:=0 to (fmrCadastro.ComponentCount -1) do
    begin
      if (fmrCadastro.Components[i] is TLabeledEdit) //Valida se o campo é do tipo TLabeledEdit
        and ((fmrCadastro.Components[i] as TLabeledEdit).tag = 1) //Campos TLabeledEdit com tag = 1 são obrigatórios
        and ((fmrCadastro.Components[i] as TLabeledEdit).text = EmptyStr) then  //valida se o campo está vazio
      begin
        Campos.Add(' - ' + (fmrCadastro.Components[i] as TLabeledEdit).EditLabel.Caption);
      end;
    end;

    if (Campos.Text <> EmptyStr) then
    begin
      Campos.Insert(0, 'Preencha os campos obrigatórios:');
      Campos.Insert(1, EmptyStr);
      ShowMessage(Campos.Text);
      result := false;
    end
    else
    begin
      //Validar o cpf
      if not isCPF(edtCPF.Text) then
      begin
        ShowMessage('CPF inválido, digite um cpf válido!');
        result := false;
      end
      else if not ValidarEmail(edtEmail.Text) then
      begin
        ShowMessage('Email inválido, digite um email válido!');
        result := false;
      end
      else
        result := true;
    end;

  finally
    Campos.Free;
  end;

end;

function TfmrCadastro.ValidarEmail(Email: String): boolean;
begin
  Email := Trim(UpperCase(Email));
  if Pos('@', Email) > 1 then
  begin
    Delete(Email, 1, pos('@', Email));
    Result := (Length(Email) > 0) and (Pos('.', Email) > 2);
  end
  else
    Result := False;
end;

end.
