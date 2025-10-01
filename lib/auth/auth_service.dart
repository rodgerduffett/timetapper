import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  // Sign in with email and password
  Future<AuthResponse> signInWithEmailPassword(String email, String password) async {
    return await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
    );
  }

  // Sign up with email and password
  Future<AuthResponse> signUpWithEmailPassword(
      String email, String password) async {
    return await _supabase.auth.signUp(
        email: email,
        password: password,
    );
  }

  // Send password reset email
  // Future<void> sendPasswordResetEmail(String email) async {
  //   await _supabase.auth.resetPasswordForEmail(
  //     email,
  //     // optional redirect URL - needs to be configured in your Supabase Auth settings
  //     redirectTo: 'io.supabase.flutter://reset-password-callback',
  //   );
  // }

  // Sign out
Future<void> signOut() async{
    await _supabase.auth.signOut();
}

  // Get user email
  String? getCurrentUserEmail() {
    final session = _supabase.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}