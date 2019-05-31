object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  BGColor = 710164266
  DefaultImageFormat = cfPNG
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    ' <!-- Bootstrap -->'
    
      '    <link href="/files/gentelella/vendors/bootstrap/dist/css/boo' +
      'tstrap.min.css" rel="stylesheet">'
    ''
    '<!-- Font Awesome -->'
    
      '    <link href="/files/gentelella/vendors/font-awesome/css/font-' +
      'awesome.min.css" rel="stylesheet">'
    ''
    '<!-- NProgress -->'
    
      '    <link href="/files/gentelella/vendors/nprogress/nprogress.cs' +
      's" rel="stylesheet">'
    ''
    '<!-- iCheck -->'
    
      '    <link href="/files/gentelella/vendors/iCheck/skins/flat/gree' +
      'n.css" rel="stylesheet">'
    ''
    '<!-- bootstrap-progressbar -->'
    
      '    <link href="/files/gentelella/vendors/bootstrap-progressbar/' +
      'css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">'
    ''
    '<!-- PNotify -->'
    
      '    <link href="/files/gentelella/vendors/pnotify/dist/pnotify.c' +
      'ss" rel="stylesheet">'
    
      '    <link href="/files/gentelella/vendors/pnotify/dist/pnotify.b' +
      'uttons.css" rel="stylesheet">'
    
      '    <link href="/files/gentelella/vendors/pnotify/dist/pnotify.n' +
      'onblock.css" rel="stylesheet">'
    ''
    '<!-- Custom Theme Style -->'
    
      '    <link href="/files/gentelella/build/css/custom.min.css" rel=' +
      '"stylesheet">'
    ''
    '<!-- jQuery -->'
    
      '    <script src="/files/gentelella/vendors/jquery/dist/jquery.mi' +
      'n.js"></script>'
    ''
    '<!-- Bootstrap -->'
    
      '    <script src="/files/gentelella/vendors/bootstrap/dist/js/boo' +
      'tstrap.min.js"></script>'
    ''
    '<!-- FastClick -->'
    
      '    <script src="/files/gentelella/vendors/fastclick/lib/fastcli' +
      'ck.js"></script>'
    ''
    '<!-- NProgress -->'
    
      '    <script src="/files/gentelella/vendors/nprogress/nprogress.j' +
      's"></script>'
    ''
    '<!-- bootstrap-progressbar -->'
    
      '    <script src="/files/gentelella/vendors/bootstrap-progressbar' +
      '/bootstrap-progressbar.min.js"></script>'
    ''
    '<!-- iCheck -->'
    
      '    <script src="/files/gentelella/vendors/iCheck/icheck.min.js"' +
      '></script>'
    ''
    '<!-- PNotify -->'
    
      '    <script src="/files/gentelella/vendors/pnotify/dist/pnotify.' +
      'js"></script>'
    
      '    <script src="/files/gentelella/vendors/pnotify/dist/pnotify.' +
      'buttons.js"></script>'
    
      '    <script src="/files/gentelella/vendors/pnotify/dist/pnotify.' +
      'nonblock.js"></script>'
    ''
    '<!-- Custom Theme Scripts -->'
    
      '<!--     <script src="/files/gentelella/build/js/custom.min.js">' +
      '</script> -->')
  AllowWebMonitor = False
  ExtLocale = 'pt_BR'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
