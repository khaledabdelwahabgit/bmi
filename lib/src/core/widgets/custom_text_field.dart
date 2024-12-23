import 'package:flutter/material.dart';
import '../../features/home/views/widgets/border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.prifixiconData,
    this.validator,
    required this.obs,
    required this.keyType,
  });
  final TextEditingController controller;
  final String label;
  final String hintText;
  final IconData prifixiconData;
  final String? Function(String?)? validator;
  final bool obs;
  final TextInputType keyType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: keyType,
      controller: controller,
      decoration: InputDecoration(
          label: Text(label),
          hintText: hintText,
          prefixIcon: Icon(prifixiconData),
          suffix: InkWell(
            child: const Icon(
              Icons.highlight_remove,
            ),
            onTap: () {
              controller.clear();
            },
          ),
          border: border(raduis: 20, color: Colors.blue),
          enabledBorder: border(raduis: 40, color: Colors.blue)),
      obscureText: obs,
    );
  }
}
