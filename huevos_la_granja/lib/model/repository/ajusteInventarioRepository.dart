//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:ventas_31269/model/entity/sale.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../entity/ajusteInventario.dart';

class AjusteInventarioRepository {
  late final CollectionReference _collection;

  AjusteInventarioRepository() {
    _collection = FirebaseFirestore.instance.collection("ajusteInventario");
  }

  Future<void> newAjusteInentario(
      AjusteInventarioEntity ajusteInventario) async {
    await _collection
        .withConverter<AjusteInventarioEntity>(
            fromFirestore: AjusteInventarioEntity.fromFirestore,
            toFirestore: (value, _) => value.toFirestore())
        .add(ajusteInventario);
  }

  Future<List<AjusteInventarioEntity>> getAllByUserId(String id) async {
    var query = await _collection
        .where("user", isEqualTo: id)
        .withConverter<AjusteInventarioEntity>(
            fromFirestore: AjusteInventarioEntity.fromFirestore,
            toFirestore: (value, _) => value.toFirestore())
        .get();

    var ajusteInventarios = query.docs.cast().map<AjusteInventarioEntity>((e) {
      var ajusteInventario = e.data();
      ajusteInventario.id = e.id;
      return ajusteInventario;
    });

    return ajusteInventarios.toList();
  }
}
