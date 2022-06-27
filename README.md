## Índice

- [Índice](#índice)
- [Introducción](#introducción)
- [¿Dónde puedo ver el proyecto?](#dónde-puedo-ver-el-proyecto)
- [Links de interés sobre accesibilidad](#links-de-interés-sobre-accesibilidad)
- [Screen readers](#screen-readers)
- [Contraste](#contraste)
- [Validadores](#validadores)
- [¿Cómo actualizar el sitio?](#cómo-actualizar-el-sitio)
- [TODOs](#todos)
- [Posibles extensiones](#posibles-extensiones)
- [Bitácora de desarrollo](#bitácora-de-desarrollo)
- [Conclusiones](#conclusiones)
- [Problemas de accesibilidad con flutter](#problemas-de-accesibilidad-con-flutter)

## Introducción

Este trabajo forma parte de la materia Diseño de experiencia de usuario y consiste en un mapa de testimonios y noticias sobre la inundación ocurrida en La Plata en el año 2013.

## ¿Dónde puedo ver el proyecto?

* El proyecto se encuentra disponible en:
  * https://nazamoresco.github.io/deu-trabajo-integrador/
* Se puede correr localmente con flutter instalado:
  * `flutter run -d chrome --web-renderer html`

## Links de interés sobre accesibilidad

* Semantics widget: https://api.flutter.dev/flutter/widgets/Semantics-class.html
* Web renderers: https://docs.flutter.dev/development/platform-integration/web/renderers
* Doc de accesibilidad: https://docs.flutter.dev/development/accessibility-and-localization/accessibility

## Screen readers

El proyecto soporta screen readers:

- [x] JAWS
- [x] NVDA
- [ ] Chrome vox
   - Flutter utiliza el elemento `shadow-root` para su renderización web y ChromeVox aun no lo soporta.

## Contraste

El color del texto ha sido oscurecido hasta pasar todos los tests en el validador https://webaim.org/resources/contrastchecker/.
El texto tiene el color #01579B, mientras que el fondo tiene el color #FAFAFA.

## Validadores

El desarrollo del sitio fue guiado por las recomendaciones de los validadores:
* https://validator.w3.org/
* Google lighthouse

## ¿Cómo actualizar el sitio?

El sitio requiere de un push manual.
1. Buildear el proyecto
   1. `flutter build web --web-renderer html --base-href "/deu-trabajo-integrador/"`
2. Pushear el resultado a `deu-trabajo-integrador`.
3. Github pages se encargará de actualizar el sitio.

## TODOs

- [ ] Permitir incrementar el contraste en la configuración.
- [ ] Poner icronos personalizados dependiendo del tipo de marker
- [ ] Agregar aria-label a los videos de youtube

## Posibles extensiones

1. Dibujar el cauce del río Maldonado.
2. Permitir a los usuarios agregar testimonios y/o noticias.

## Bitácora de desarrollo
- Se agregó la página principal, un sidebar y un mapa.
- Se agregaron testimonios al mapa y noticias.
- Se agregó la habilidad de filtrar los distintos tipos de markers.
- Se incluye información general al sidebar.
- Se incluye una configuración en el sidebar y en un página aparte.
- Se incluyó una página principal educativa.
- Se agregó un preview en el sidebar de los distintos markers.
- Se modifica el color del texto para pasar los validadores de contraste
- Se puso semántica a todos los botones de la aplicación.
- Se encontró la causa a todos los problemas de accesibilidad actuales.
- Se extendió la página principal.
- Se listó los sitios de interes del mapa en el sidebar.

##  Conclusiones

* Flutter es una gran herramienta para el desarrollo accesible
  * Sin configuración posee un alto puntaje de accesibilidad.
  * Provee componentes como Semantics para la extensión de la semántica de parte del desarrollador.
  * Como desventaja, cuando no soporta algo agregarlo es una tarea ardua.
    * Las peticiones tardan mucho tiempo en avanzar.
    * En contraposición a esta falta de control, si colaboramos a solucionar el problema esto afectará un gran número de aplicaciones, haciéndolas más accesibles.

## Problemas de accesibilidad con flutter

En el desarrollo de la aplicación hemos notado como Flutter tiene algunas fallas de accesibilidad, las listamos a continuación:

1. ChromeVox no es compatible con Flutter
   1. Esto no es tanto un problema de flutter como de la extensión, que debería soportar este elemento, aun así es un problema para los usuarios con esta extensión que quieran acceder a aplicaciones web construidas con Flutter.
2. Flutter no soporta el aria-level
   1. El aria-level permite definir el nivel jerárquico semántico de un elemento en la estructura.
   2. https://github.com/flutter/flutter/issues/97305
3. Flutter no permite la modificación de la propiedad `user-scalable` en la etiqueta `meta viewport`
   1. Si bien esto es así porque Flutter lo soporta internamente, es un problema con los validadores de accesibilidad.
   2. https://github.com/flutter/flutter/issues/97305
4. Los markers de google_maps_web no tienen aria-labels
   1. Se presentará un issue para que solucione, ya que no se han encontrado issues existentes.
