package # Hide from PAUSE
    TestApp::View::EmailSMTP;


use base 'Catalyst::View::Email';

__PACKAGE__->config(
    default => {
      content_type => 'text/plain',
      charset      => 'utf-8'
    },
    sender => {
      mailer      => 'SMTP',
      mailer_args => {
        Host     => 'smtp.example.com',
        username => 'user@example.com',
        password => 'example',
      }
    },
);

1;
