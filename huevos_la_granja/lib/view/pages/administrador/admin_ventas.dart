import 'package:flutter/material.dart';
import 'package:huevos_la_granja/view/widgets/campo_fecha.dart';
import 'package:huevos_la_granja/view/widgets/espacio.dart';

class AdminVentasPage extends StatelessWidget {
  const AdminVentasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Informe de Ventas"),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 550,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  espacio(20),
                  _fechas(context),
                  _respuestaBack(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _fechas(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
        key: formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CampoFecha(nombre: "Desde:"),
            const CampoFecha(nombre: "Hasta:"),
          ],
        ));
  }

  Widget _respuestaBack(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(children: [
        espacio(20),
        const Text(
          "TOTAL VENTAS",
          style: TextStyle(fontSize: 24),
        ),
        espacio(5),
        const Text(
          "1.000.000",
          style: TextStyle(fontSize: 18),
        ),
        espacio(15),
        _tablaGeneral()
      ]),
    );
  }

  Widget _tablaGeneral() {
    return Center(
      child: SingleChildScrollView(
        child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith(
              (states) {
                return Colors.amber;
              },
            ),
            dataRowColor: MaterialStateColor.resolveWith(
              (states) {
                return Colors.grey.shade300;
              },
            ),
            dataRowHeight: 25,
            headingRowHeight: 25,
            decoration: BoxDecoration(border: Border.all()),
            columns: const [
              DataColumn(label: Center(child: Text('Fecha'))),
              DataColumn(label: Center(child: Text('Tipo Producto'))),
              //DataColumn(label: Center(child: Text('Cantidad'))),
              //DataColumn(label: Center(child: Text('Costo'))),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Center(child: Text(""))),
                DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text(""))),
                DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text(""))),
                DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text(""))),
                DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
              ]),
              DataRow(cells: [
                DataCell(Center(child: Text(""))),
                DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
                //DataCell(Center(child: Text(""))),
              ]),
            ]),
      ),
    );
  }
}
