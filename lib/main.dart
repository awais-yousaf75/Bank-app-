import 'package:bank/provider/counter_provider.dart';
import 'package:bank/provider/todo_provider.dart';
import 'package:bank/screens/counter_getx.dart';
import 'package:bank/screens/forgot_password2_screen.dart';
import 'package:bank/screens/forgot_password_screen.dart';
import 'package:bank/screens/getx_form.dart';
import 'package:bank/screens/message_screen.dart';
import 'package:bank/screens/search_screen.dart';
import 'package:bank/screens/signin_screen.dart';
import 'package:bank/screens/signup_screen.dart';
import 'package:bank/screens/todoScreen_with_Getx.dart';
import 'package:bank/screens/todo_screen.dart';
import 'package:bank/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
runApp(GetMaterialApp(home: SigninScreen(), debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: white,
    ),));

  /*runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MyApp(),
    ),
  );



}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(

      ),
    );
  }*/
}
/*void main()
{
  runApp(MaterialApp(home: SignupScreen(),debugShowCheckedModeBanner: false));
}*/


/*import 'package:bank/provider/cart_provider.dart';
import 'package:bank/provider/counter_provider.dart';
import 'package:bank/provider/form_provider.dart';
import 'package:bank/provider/hotel_provider.dart';
import 'package:bank/provider/slider_provider.dart';
import 'package:bank/provider/switch_provider.dart';
import 'package:bank/provider/task_provider.dart';
import 'package:bank/provider/theme_provider.dart';
import 'package:bank/screens/available_rooms_screen.dart';
import 'package:bank/screens/cart_screen.dart';
import 'package:bank/screens/switch_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HotelProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AvailableRooms(

      ),
    );
  }
}*/


