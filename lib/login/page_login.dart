import 'package:flutter/material.dart';
import 'package:projeto_tools/consts/text_form_field.dart';

class page_login extends StatefulWidget {
  page_login({Key? key}) : super(key: key);

  @override
  State<page_login> createState() => _page_loginState();
}

class _page_loginState extends State<page_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/login.png', fit: BoxFit.cover,),
            ),
           Expanded(
             child: Container(
                    alignment: Alignment.bottomLeft,
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.height / 2.0,
                    margin: EdgeInsets.only( 
                    left: MediaQuery.of(context).size.width/1.5, 
                    top: MediaQuery.of(context).size.width/6)  ,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: Offset(3.00, 3.00),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                 child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 150),
                   child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: Image.asset('assets/images/logo_tools.png', 
                        fit: BoxFit.contain,
                        width: MediaQuery.of(context).size.height / 3,
                        )
                        ),
                      const CustomTextField(
                        hint: 'Login',
                        suffix: Icons.alternate_email,
                    ),
                    const SizedBox(height: 5,),
                    const CustomTextField(
                        hint: 'Senha',
                        suffix: Icons.lock,
                    ),
                    const SizedBox(height: 5,),
                    ElevatedButton(
                    onPressed: (){}, 
                    child: const Text('Entrar'),
                    style:  ButtonStyle(
                      fixedSize:  MaterialStateProperty.resolveWith((states) {
                        if(states.contains(MaterialState.pressed)){
                          
                        }
                        if(states.contains(MaterialState.hovered)){
                          
                        }
                          return const Size(300, 50);
                      }),
                      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
                        if(states.contains(MaterialState.pressed)){
                          return Colors.black;
                        }
                        if(states.contains(MaterialState.hovered)){
                          return Colors.red;
                        }
                        return Colors.blue;
                      }),
                      
                    ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('precisa de ajuda?'),
                        TextButton(
                         onPressed: (){},
                         child: Text("Suporte"),
                         ),
                      ],
                    )
                    ],
                   ),
                 ),   
             ),
           ),
        ],
      ),
    );
  }
}