import 'package:flutter/material.dart';
import 'package:oreo/page/Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
bool _obscurePassword = true;

@override
void dispose() {
_emailController.dispose();
_passwordController.dispose();
super.dispose();
}

void _handleLogin() {
  final email = _emailController.text.trim();
  final password = _passwordController.text.trim();

  if (email.isEmpty || password.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please enter email and password')),
    );
    return;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Logging in as $email...')),
  );
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [const SizedBox(height: 60),
        //logo,icon
          Center(child: Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.cookie_rounded, color: Colors.teal, size: 44),
          ),
          ),

          const SizedBox(height: 24),
          const Text(
            'Welcome Back',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: Colors.teal,
            ),
          ),

          const SizedBox(height: 8),
          Text(
            'Log in to continue shopping with Oreo',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),

          const SizedBox(height: 40),
          // Email field
          const Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),

          const SizedBox(height: 8),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              prefixIcon: const Icon(Icons.email_outlined),
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 20),
          // Password field
          const Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),

          const SizedBox(height: 8),
          TextField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              hintText: '••••••••',
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
              icon: Icon(
                 _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                ),
               onPressed: () {
                 setState(() => _obscurePassword = !_obscurePassword);
                },
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.teal, fontWeight: FontWeight.w600),
              ),
            ),
          ),

          const SizedBox(height: 12),
          // Login button
          SizedBox(
            height: 52,
            child: ElevatedButton(
              onPressed: _handleLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Sign up link
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? ", style: TextStyle(color: Colors.grey.shade600)),
              GestureDetector(
                onTap: () {
                  // TODO: navigate to your sign-up page
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.teal, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
      ),
      ),
    );
  }
}

