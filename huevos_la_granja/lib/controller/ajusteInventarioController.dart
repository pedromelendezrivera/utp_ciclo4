import 'dart:ffi';

import '../model/entity/ajusteInventario.dart';
import '../model/repository/ajusteInventarioRepository.dart';

//import 'package:ventas_31269/model/entity/sale.dart';
//import 'package:ventas_31269/model/repository/sale.dart';

class AjusteInventarioController {
  late AjusteInventarioRepository _repository;

  AjusteInventarioController() {
    _repository = AjusteInventarioRepository();
  }

  Future<void> save(AjusteInventarioEntity ajusteInventario) async {
    await _repository.newAjusteInentario(ajusteInventario);
  }

  Future<List<AjusteInventarioEntity>> listAll(String id) async {
    return await _repository.getAllByUserId(id);
  }
}
