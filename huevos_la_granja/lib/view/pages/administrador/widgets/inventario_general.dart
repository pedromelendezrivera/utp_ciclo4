import 'package:flutter/material.dart';

import '../../../widgets/espacio.dart';

Widget inventarioGeneral() {
  return Center(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          width: 350,
          height: 550,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Column(children: [
            espacio(20),
            const Text(
              "RESUMEN",
              style: TextStyle(fontSize: 24),
            ),
            espacio(150),
            _tablaGeneral()
          ]),
        ),
      ]),
    ),
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
            DataColumn(label: Center(child: Text('Tipo Producto'))),
            DataColumn(label: Center(child: Text('Cantidad'))),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Center(child: Text("A"))),
              DataCell(Center(child: Text('1000'))),
            ]),
            DataRow(cells: [
              DataCell(Center(child: Text("AA"))),
              DataCell(Center(child: Text('1500'))),
            ]),
            DataRow(cells: [
              DataCell(Center(child: Text("Jumbo"))),
              DataCell(Center(child: Text('500'))),
            ]),
            DataRow(cells: [
              DataCell(Center(child: Text("Extra"))),
              DataCell(Center(child: Text('250'))),
            ]),
            DataRow(cells: [
              DataCell(Center(child: Text("B"))),
              DataCell(Center(child: Text('300'))),
            ]),
          ]),
    ),
  );
}
