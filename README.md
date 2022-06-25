## Indice

- [Indice](#indice)
- [Introduccion](#introduccion)
- [Donde puedo ver el proyecto?](#donde-puedo-ver-el-proyecto)
- [Links de interes sobre accesibilidad](#links-de-interes-sobre-accesibilidad)
- [Screen readers](#screen-readers)
- [Contraste](#contraste)
- [Validadores](#validadores)
- [Como actualizar el sitio?](#como-actualizar-el-sitio)
- [TODOs](#todos)
- [Posibles extensiones](#posibles-extensiones)
- [Bitácora de desarrollo](#bitácora-de-desarrollo)

## Introduccion

Este trabajo forma parte de la materia Diseño de experiencia de usuario y consiste en un mapa de testimonios y noticias sobre la inundacion ocurrida en La Plata en el año 2013.

## Donde puedo ver el proyecto?

* El proyecto se encuentra disponible en:
  * https://nazamoresco.github.io/deu-trabajo-integrador/
* Se puede correr localmente con flutter instalado:
  * `flutter run -d chrome --web-renderer html`

## Links de interes sobre accesibilidad

* Semantics widget: https://api.flutter.dev/flutter/widgets/Semantics-class.html
* Web renderers: https://docs.flutter.dev/development/platform-integration/web/renderers
* Doc de accesibilidad: https://docs.flutter.dev/development/accessibility-and-localization/accessibility

## Screen readers

El proyecto soporta screen readers:

- [x] JAWS
- [ ] Chrome vox
   - Flutter utiliza el elemento `shadow-root` para su renderizacion web y ChromeVox aun no lo soporta.

## Contraste

El color del texto ha sido oscurecido hasta pasar todos los tests en el validador https://webaim.org/resources/contrastchecker/.
El texto tiene el color #01579B, mientras que el fondo tiene el color #FAFAFA.

## Validadores

El desarrollo del sitio fue guiado por las recomendaciones de los validadores:
* https://validator.w3.org/
* Google lighthouse

## Como actualizar el sitio?

El sitio requiere de un push manual.
1. Buildear el proyecto
   1. `flutter build web --web-renderer html --base-href "/deu-trabajo-integrador/"`
2. Pushear el resultado a `deu-trabajo-integrador`.
3. Github pages se encagará de actualizar el sitio.

## TODOs

- [ ] Permitir incrementar el contraste en la configuracion.
- [ ] Completar pagina principal.
- [ ] Agregar una lista con todos los markers.
- [ ] Poner iconos personalizados dependiendo del tipo de marker

## Posibles extensiones

1. Dibujar el cauce del rio Maldonado.
2. Permitir a los usuarios agregar testimonios y/o noticias.

## Bitácora de desarrollo
- Se agrego la pagina principal, un sidebar.
- Se agregaron testimonios al mapa y noticias.
- Se agrego la habilidad de filtrar los distintos tipos de markers.
- Se incluyo informacion general al sidebar.
- Se includo una configuracion en el sidebar y en un página aparte.
- Se incluyo una página principal educativa.
- Se agregó un preview en el sidebar de los distintos markers.
- Se modificó el color del texto para pasar los validadores de contraste
- Se puso semantica a todos los botones de la aplicacion.