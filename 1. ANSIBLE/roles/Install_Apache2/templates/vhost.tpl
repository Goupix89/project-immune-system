<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot {{ apache_document_root }}

    <Directory {{ apache_document_root }}>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>