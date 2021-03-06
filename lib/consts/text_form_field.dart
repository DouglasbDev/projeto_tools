import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //final String? label;
  final String? hint;
  final IconData? icon;
  final IconData? prefix;
  final IconData? suffix;
  final String? Function(String? text)? validator;
  final void Function(String? text)? onSaved;
  final void Function(String text)? onChanged;
  final bool obscureText;

  

  const CustomTextField({
    Key? key,
    //this.label,
    this.hint,
    this.icon,
    this.prefix,
    this.suffix,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 5),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          //label: Text(label),
          //labelStyle: const TextStyle(color: Colors.black,),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black,fontSize: 15),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10),),
            borderSide: BorderSide(color: Colors.white70),
          ),
          focusedBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.white70),
          ),
          errorBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0))
            ),
          icon: icon == null ? null : Icon(icon),
          suffixIcon: suffix == null ? null : Icon(suffix),
          prefixIcon: prefix == null ? null : Icon(prefix),
        )           
      ),
    );
    
  }
}

@immutable
class UserModel{
  final String name;
  final String email;
  final String password;

  UserModel({
     this.name = '',
     this.email = '',
     this.password = '',
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? password,

}){
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
