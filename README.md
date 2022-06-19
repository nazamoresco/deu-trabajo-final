# Donde ver el proyecto?

El proyecto se encuentra disponible en:

https://nazamoresco.github.io/deu-trabajo-integrador/

Se puede correr localmente tambien.

Si contamos con flutter en nuestra maquina: `flutter run -d chrome --web-renderer html`

# Links de interes sobre accesibilidad

* Semantics widget: https://api.flutter.dev/flutter/widgets/Semantics-class.html
* Web renderers: https://docs.flutter.dev/development/platform-integration/web/renderers
* Doc de accesibilidad: https://docs.flutter.dev/development/accessibility-and-localization/accessibility

# Screen readers

El proyecto soporta screen reades:
[ x ] JAWS

# Desarolladores
## Como actualizar el sitio?

El sitio requiere de un push manual.
1. Buildear el proyecto
   1. `flutter build web --web-renderer html --base-href "/deu-trabajo-integrador/"`
2. Pushear el resultado a `deu-trabajo-integrador`.
3. Github pages se encagará de actualizar el sitio.

##  TODO

1. Agregar un welcome screen : FB
   1. Falta una pantalla con titulo/nombre de la aplicacion y una explicacion para que sirve.
2. Chequear contraste de colores de texto : FR
3. Permitir que los usuarios agreguen testimonios?
4. Agregar configuracion para el contraste
5. Revisar los puntos del TP3

