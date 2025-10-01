import 'package:timetapper/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://jfhiyeyfjaqemfdftwif.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpmaGl5ZXlmamFxZW1mZGZ0d2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTM1NDg0NDIsImV4cCI6MjA2OTEyNDQ0Mn0.Qf6Ah0GxuCW_kOnWhDVac9zIOpxy_pOd3dMdKDuk9gk',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthGate(),
    );
  }
}

