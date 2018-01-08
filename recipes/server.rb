powershell_script 'install_iis' do
	code 'Add-WindowsFeature Web-Server'
end


file 'c:/inetpub/wwwroot/Default.htm' do
	content '<h1>Hello, World!</h1>'
end

service 'w3svc' do
	action [:enable,:start]
end
