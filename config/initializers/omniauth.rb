 OmniAuth.config.logger = Rails.logger

 Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1459791290950186', 'c40ccb8f1d064457ebe95f425a84589b'
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '456108560195-vifkp7e40uj7jb7bsfc3qh2gbrg34k21.apps.googleusercontent.com', 'Rx3tyFGespZIX0C0yCSQaxI_'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :linkedin, '75s6oacsv6s9jz', 'BfKMKSuNBObthgue'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :twitter, 'JKpzQ36vGmLuTKjuLFoXLFUP0', 'Dpo6ZMyw4wv0pNrwgoO4lOhGOe4D8sB0p1v64S7LayEdgTi7x8'
end

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :github, 'ab238011495c4a1d31eb', '347889bc526e516d555192153dc00b30390a49f9'
end