/* import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:contablemobileapp/src/navigation/mis_gastos_description/models/expense_detail.dart';
import 'package:contablemobileapp/src/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';

//Se define la clase PDFViewerCustom y se heredan los miembros (métodos y propiedades) de la clase StatefulWidget
class PDFViewerCustom extends StatefulWidget {
  //Constructor
  const PDFViewerCustom(this.document, {Key? key}) : super(key: key);

  //Propiedad de la clase "PDFViewerCustom" Esta es una propiedad de solo lectura (final) y contiene un objeto (Document) que puede representar el archivo PDF
  final Document document; //Actualmente solo esta definido mas no tiene valor

  @override //Decorador
  //El método "createState()" nos permite asociar un estado mutable a un widget "StatefulWidget", lo que nos ayuda a gestionar cualquier estado interno que el widget necesite mantener y modificar a lo largo del tiempo.
  _PDFViewerCustomState createState() => _PDFViewerCustomState();
}

//CLase de estado: Esta clase de estado es responsable de mantener el estado mutable y la lógica asociada al widget "PDFViewerCustom"
class _PDFViewerCustomState extends State<PDFViewerCustom> {
  //--> init propiedades de la clase de estados init <--

  //Variable que puede contener un documento PDF o ser nula
  PDFDocument? doc;

//variable observable: se utiliza para controlar si se está cargando un documento PDF.
  var isLoading = true.obs;

//Variable booleana
  bool isPdf = false;
//--> end propiedades de la clase de estados end <--

  @override //Decorador
  //Aca se inicializa o configura el estado
  void initState() {
    //Se llama al método initState de la clase base, lo que permite que la clase base realice su propia inicialización, si es necesario.
    super.initState();
    print("Ruta del pdf/imagen: ${widget.document.fullPath!}");
    // Verifica si la ruta del documento contiene la cadena ".pdf"
    if (widget.document.fullPath!.contains('.pdf')) {
      isPdf = true;
      loadDoc();
      //Caso contrario de no conseguir la ruta del documento con ".pdf"
    } else {
      isPdf = false;
    }
  }

  @override //Decorador
  //La función "build" es la que define la estructura y el contenido visual de tu widget.
  Widget build(BuildContext context) {
    //Un Scaffold es un widget que proporciona una estructura básica (card) para las aplicaciones móviles de Flutter.
    return Scaffold(
      backgroundColor: Colors.black,
      //barra de aplicaciones de la parte superior (img/pdf)
      appBar: AppBar(
        //widget que se visualiza en el extremo superior izquierdo
        leading: InkWell(
            //Callback que permite regresar a la seccion anterior al tocar el boton en la parte superior izquierda
            onTap: () {
              Navigator.pop(context);
            },
            //tamaño y color del icono "<"
            child: const Icon(Icons.arrow_back_ios_sharp,
                size: 15, color: Colors.white)),
        //
        title: Text(
          //titulo
          widget.document.name!, //! <-- indica que nunca sera nulo
          //color del texto y peso de fuente
          style: headingsMedium.copyWith(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
          child: isPdf
              ? Obx(
                  () => !isLoading.value
                      ? PDFViewer(
                          document:
                              doc!, //Se especifica que el valor de doc nunca sera nulo.
                          lazyLoad: true,
                          showIndicator: true,
                        )
                      : Container(),
                )
              : GestureDetector(
                  onTap: () {
                    final imageProvider =
                        Image.network(widget.document.fullPath!).image;
                    showImageViewer(context, imageProvider,
                        onViewerDismissed: () {
                      // Acciones a realizar cuando se cierra el visor, si es necesario
                    });
                  },
                  child: Container(
                    // Puedes mostrar una miniatura o una representación de la imagen aquí
                    child: Image.network(widget.document.fullPath!),
                  ),
                )
          /* PinchZoomImage(
                image: CachedNetworkImage(
                  imageUrl: widget.document.fullPath!,
                ), */
          /* zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                hideStatusBarWhileZooming: true,
              ), */
          ),
    );
  }

  Future<void> loadDoc() async {
    await PDFDocument.fromURL(widget.document.fullPath!).then((value) {
      print("loaded");
      doc = value;
      print("Numero de documento: ${doc!.count}");
      isLoading.value = false;
      print("finalizo");
    });
  }
}
 */