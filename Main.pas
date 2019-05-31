unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniEdit,
  uniLabel, uniButton, uniPanel, uniHTMLFrame;

type
  TMainForm = class(TUniForm)
    LbFmePrincipal: TUniLabel;
    procedure LbFmePrincipalAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
    procedure EfetuarLogin(const psLogin, psSenha: string);
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, System.Rtti;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.EfetuarLogin(const psLogin, psSenha: string);
begin
  if (psLogin.ToUpper = 'David'.ToUpper) and (psSenha = '123') then
  begin
    UniSession.AddJS(
      'FmePrincipal = document.getElementById(''FmePrincipal'');' + sLineBreak +
      'FmePrincipal.contentWindow.location.replace(''/files/gentelella/production/index.html'');');
  end
  else
  begin
    UniSession.AddJS(
      'new PNotify({' + sLineBreak +
      '             title: ''Opa, algo deu errado!'',' + sLineBreak +
      '             text: ''Não foi possível efetuar login. Verifique o usuário e senha informados!'',' + sLineBreak +
      '             type: ''error'',' + sLineBreak +
      '             styling: ''bootstrap3''' + sLineBreak +
      '                              });');
  end;
end;

procedure TMainForm.LbFmePrincipalAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
//  ShowMessage('Mensagem Delphi');
  if EventName = 'EfetuarLogin' then
  begin
    EfetuarLogin(Params.Values['psLogin'], Params.Values['psSenha']);
  end;


//  UniSession.Query
//window.ajaxRequest(MainForm.UniHTMLFrame1, 'myclickevent', [], false);
//window.ajaxRequest(MainForm.UniLabel1, 'myclickevent', [], false);

//function receiver(e) {
///*
//  if (e.origin == 'https://example.com') {
//    if (e.data == 'Hello world') {
//      e.source.postMessage('Hello', e.origin);
//    } else {
//      alert(e.data);
//    }
//  }
//*/
//  window.ajaxRequest(MainForm.UniLabel1, 'myclickevent', [], false);
//  alert(e.data);
//  console.log(e.data);
//}
//window.addEventListener('message', receiver, false);
//console.log('Passou aki 1');

//parent.postMessage("Teste do David", "*");

//https://html.spec.whatwg.org/multipage/web-messaging.html#web-messaging
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
