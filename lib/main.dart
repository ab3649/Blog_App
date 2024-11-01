import 'package:blog_app/core/secrets/supa_secrets.dart';
import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/features/presentation/pages/login_page.dart';
// import 'package:blog_app/features/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  //need to add the below line in case of a before runApp() initialization like firebase or supabase, it is automatically added before runApp() but need to add manually for running stuff before runApp(0
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      // home: const SignUpPage(),
      home: const LoginPage(),
    );
  }
}
