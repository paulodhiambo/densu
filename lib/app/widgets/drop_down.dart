import 'package:flutter/material.dart';

class DropdownOutlineInput<T> extends StatefulWidget {
  final String labelText;
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;
  final void Function(T?)? onChanged;

  const DropdownOutlineInput({
    super.key,
    required this.labelText,
    required this.items,
    this.initialValue,
    this.onChanged,
  });

  @override
  _DropdownOutlineInputState<T> createState() =>
      _DropdownOutlineInputState<T>();
}

class _DropdownOutlineInputState<T> extends State<DropdownOutlineInput<T>> {
  T? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      value: _selectedItem,
      items: widget.items,
      onChanged: (value) {
        setState(() {
          _selectedItem = value;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
    );
  }
}
