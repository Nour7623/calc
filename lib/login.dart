import 'package:calc/components/components_dart.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  //const login ({super.key});

  get emailController => null;

  get passwordController => null;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions:
        [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: onNotification,
          ),
          IconButton(icon: Text('Hello',)
            ,
            onPressed: ()
            {
              print('Hello');
            },
          ),
          Icon(
            Icons.search,
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    lable: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (value){
                      if(value.isEmpty){
                        return' email must not be empty';
                      }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (String value)
                    {
                      print(value);
                    },
                    onChanged: (String value)
                    {
                      print(value);
                    },
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return('password must not be empty');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',

                    function: (){
                      if(formkey.currentState!.validate())
                      {
                        print(emailController.text);
                        print(passwordController.text);
                      }

                    },

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'Register',

                    function: (){
                      print(emailController.text);
                      print(passwordController.text);
                    },

                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have account ?',),
                      TextButton(
                        onPressed:(){},
                        child: Text(
                            'Register Now'
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void onNotification()
  {
    print('notification clicked');
  }
}
