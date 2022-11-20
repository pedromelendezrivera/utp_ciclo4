import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class CampoFecha extends StatefulWidget {
  final String nombre;
  const CampoFecha({super.key, required this.nombre});
  @override
  // ignore: no_logic_in_create_state
  State<CampoFecha> createState() => _CampoFechaEstado(nombre: nombre);
}

class _CampoFechaEstado extends State<CampoFecha> {
  final String nombre;
  _CampoFechaEstado({
    required this.nombre,
  });
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return _FormDatePicker(
      nombre: nombre,
      date: date,
      onChanged: (value) {
        setState(() {
          date = value;
        });
      },
    );
  }
}

class _FormDatePicker extends StatefulWidget {
  final DateTime date;
  final String nombre;
  final ValueChanged<DateTime> onChanged;

  const _FormDatePicker({
    required this.date,
    required this.onChanged,
    required this.nombre,
  });

  @override
  // ignore: no_logic_in_create_state
  State<_FormDatePicker> createState() => _FormDatePickerState(nombre: nombre);
}

class _FormDatePickerState extends State<_FormDatePicker> {
  final String nombre;
  _FormDatePickerState({
    required this.nombre,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              nombre,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              intl.DateFormat.yMd().format(widget.date),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.calendar_month_outlined),
          onPressed: () async {
            var newDate = await showDatePicker(
              context: context,
              initialDate: widget.date,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );

            // Don't change the date if the date picker returns null.
            if (newDate == null) {
              return;
            }

            widget.onChanged(newDate);
          },
        )
      ],
    );
  }
}
