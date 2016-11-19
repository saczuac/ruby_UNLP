# Rails Configuration

Para realizar configuraciones en el framework deberá acceder al archivo `/config/application.rb` y especificar las configuraciones que desee, a su vez puede dirigirse a el directorio `/config/environments/` y añadir líneas de configuración como por ejemplo para `development.rb`:

+ config.time_zone = 'Buenos Aires'
+ config.active_record.schema_format = :ruby

## Archivos Principales

+ `/config/application.rb`
+ `/config/environments/*`
+ `/config/database.yml` => Para configurar la base de datos
+ `/config/routes.rb` => Para configurar las rutas de la aplicación
+ `/config/secrets.yml` => Para especificar contraseñas en la aplicación o keys

## Change default locale

+ Incluir la gema: `gem 'rails-i18n'` en el `Gemfile`
+ Ejecutar `bundle install`
+ Agregar `config.i18n.default_locale = :'es-AR'` en `/config/application.rb`
+ Obviamente para que funcione tenemos que descargar el `es-AR.yml` y agregarlo en la carpeta `/config/locales`


## Change time zone

+ Agregar `config.time_zone = 'Buenos Aires'` en `/config/application.rb` para cambiar la zona horaria
