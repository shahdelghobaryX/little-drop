import 'package:flutter/material.dart';

void main() {
  runApp(const LittleDropApp());
}

class LittleDropApp extends StatelessWidget {
  const LittleDropApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Little Drop',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const Color primaryPurple = Color(0xFF5148B4);
  static const Color darkText = Color(0xFF242424);
  static const Color subtitleColor = Color(0xFF888888);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 400,
                    minHeight: constraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const TaskIllustration(),
                        const SizedBox(height: 12),

                        const Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: darkText,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'Welcome To Little Drop, where\n'
  'you manage your daily tasks',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.35,
                            color: subtitleColor,
                          ),
                        ),

                        const SizedBox(height: 24),

                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Login button pressed'),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryPurple,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: OutlinedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Sign Up button pressed'),
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: primaryPurple,
                              side: const BorderSide(
                                color: primaryPurple,
                                width: 1.2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          'Sign up using',
                          style: TextStyle(
                            fontSize: 12,
                            color: subtitleColor,
                          ),
                        ),

                        const SizedBox(height: 12),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialIcon(
                              label: 'f',
                              backgroundColor: Color(0xFF4267A9),
                            ),
                            SizedBox(width: 14),
                            SocialIcon(
                              label: 'G+',
                              backgroundColor: Color(0xFFDB4437),
                            ),
                            SizedBox(width: 14),
                            SocialIcon(
                              label: 'in',
                              backgroundColor: Color(0xFF2878A9),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TaskIllustration extends StatelessWidget {
  const TaskIllustration({super.key});

  static const Color purple = Color(0xFF5148B4);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300, 
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 25,
            left: 10,
            child: Icon(
              Icons.add,
              size: 18,
              color: Colors.grey.shade400,
            ),
          ),

          const Positioned(
            top: 45,
            right: 35,
            child: Icon(
              Icons.circle_outlined,
              size: 18,
              color: Color(0xFFCCCCCC),
            ),
          ),

          const Positioned(
            top: 85,
            right: 50,
            child: Icon(
              Icons.auto_awesome,
              color: purple,
              size: 18,
            ),
          ),

          Positioned(
            left: 20,
            top: 100,
            child: Icon(
              Icons.circle_outlined,
              size: 12,
              color: purple.withValues(alpha: 0.8),
            ),
          ),

          Positioned(
            bottom: 55,
            right: 35,
            child: Icon(
              Icons.add,
              size: 18,
              color: Colors.grey.shade400,
            ),
          ),

          // Smartphone
          Positioned(
            left: 35,
            top: 65,
            child: Container(
              width: 100,
              height: 185,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: const Color(0xFF292635),
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 8,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    width: 24,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBDBDBD),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 68,
                    height: 88,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFB8B8C5),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 30,
                          color: const Color(0xFFB4B4C0),
                        ),
                        const SizedBox(height: 7),
                        Container(
                          height: 3,
                          width: 22,
                          color: const Color(0xFFB4B4C0),
                        ),
                        const SizedBox(height: 7),
                        Container(
                          height: 3,
                          width: 32,
                          color: const Color(0xFFB4B4C0),
                        ),
                        const SizedBox(height: 10),
                        const Icon(
                          Icons.check_circle,
                          color: purple,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 30,
                    height: 4,
                    decoration: BoxDecoration(
                      color: purple,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),

          // Person illustration
          Positioned(
            right: 30,
            bottom: 28,
            child: SizedBox(
              width: 90,
              height: 170,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 8,
                    child: Container(
                      width: 24,
                      height: 28,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1C4A7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 4,
                    child: Container(
                      width: 25,
                      height: 13,
                      decoration: const BoxDecoration(
                        color: Color(0xFF292635),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 32,
                    child: Container(
                      width: 34,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Color(0xFF6558B8),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 40,
                    left: 23,
                    child: Transform.rotate(
                      angle: -0.25,
                      child: Container(
                        width: 10,
                        height: 43,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1C4A7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 40,
                    right: 20,
                    child: Transform.rotate(
                      angle: 0.25,
                      child: Container(
                        width: 10,
                        height: 43,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1C4A7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 80,
                    left: 32,
                    child: Transform.rotate(
                      angle: 0.10,
                      child: Container(
                        width: 12,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF292635),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 80,
                    right: 32,
                    child: Transform.rotate(
                      angle: -0.12,
                      child: Container(
                        width: 12,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF292635),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),

                  const Positioned(
                    bottom: 12,
                    left: 21,
                    child: Icon(
                      Icons.horizontal_rule,
                      size: 27,
                      color: Color(0xFF292635),
                    ),
                  ),

                  const Positioned(
                    bottom: 12,
                    right: 18,
                    child: Icon(
                      Icons.horizontal_rule,
                      size: 27,
                      color: Color(0xFF292635),
                    ),
                  ),
                ],
              ),
            ),
          ),

          
          Positioned(
            bottom: 24,
            left: 15,
            right: 15,
            child: Container(
              height: 1,
              color: const Color(0xFFDDDDDD),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String label;
  final Color backgroundColor;

  const SocialIcon({
    super.key,
    required this.label,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: label == 'G+' ? 12 : 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
