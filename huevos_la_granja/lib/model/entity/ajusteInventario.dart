import 'package:cloud_firestore/cloud_firestore.dart';

class AjusteInventarioEntity {
  late String? id;
  late String? tipoProducto;
  late String? almancen;
  late String? motivo;
  late int? cantidad;
  late String? observaciones;

  AjusteInventarioEntity(
      {this.tipoProducto,
      this.almancen,
      this.motivo,
      this.cantidad,
      this.observaciones});

  factory AjusteInventarioEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    var data = snapshot.data();

    return AjusteInventarioEntity(
        tipoProducto: data?["tipoProducto"],
        almancen: data?["almancen"],
        motivo: data?["motivo"],
        cantidad: data?["cantidad"],
        observaciones: data?["observaciones"]);
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (tipoProducto != null && tipoProducto!.isNotEmpty)
        "tipoProducto": tipoProducto,
      if (almancen != null && almancen!.isNotEmpty) "almancen": almancen,
      if (motivo != null) "motivo": motivo,
      if (cantidad != null) "cantidad": cantidad,
      if (observaciones != null && observaciones!.isNotEmpty)
        "observaciones": observaciones,
    };
  }
}
