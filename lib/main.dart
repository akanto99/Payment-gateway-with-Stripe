import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getway_stripe/payment_gateway_stripe.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = 'pk_test_51LTjy2JdGsXWBk5LnBwZeDdOFpAoYQ4O3DfELJbyZSzG1NjsP2WBBE6MZHx6soY5tCgo4kuq35ELbc62yMIsq642002DCh4KbP';

  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:MyStripe(),
    );
  }
}

