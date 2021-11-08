program Cadastro;

uses
  Vcl.Forms,
  unMain in 'unMain.pas' {fmrCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmrCadastro, fmrCadastro);
  Application.Run;
end.
