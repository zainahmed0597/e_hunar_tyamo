import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/colors.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final double size;

  const AuthTextField({super.key,
    required this.keyboardType,
    required this.labelText,
    required this.obscureText,
    required this.icon,
    required this.size});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      keyboardType:keyboardType,
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.poppins(fontSize: size),
      decoration: InputDecoration(
        filled: true,
        fillColor: textFiledColor,
        prefixIcon: Icon(icon, size: size),
        prefixIconColor: prefixIconColor,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        label: Text(
          labelText,
          style: GoogleFonts.poppins(fontSize: size, color: black),
        ),
        labelStyle: GoogleFonts.poppins(fontSize: size, color: black),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
