import 'package:flutter/material.dart';
import 'package:frostedify/frostedify.dart';

class FrostedifyPackageHome extends StatefulWidget {
  const FrostedifyPackageHome({super.key});

  @override
  State<FrostedifyPackageHome> createState() => _FrostedifyPackageHomeState();
}

class _FrostedifyPackageHomeState extends State<FrostedifyPackageHome> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const FrostedifyAppbar(title: 'Frostedify Demo', textStyle: TextStyle(color: Colors.white),),
   //   backgroundColor: Colors.black,
      body: Container(
 decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 23, 49, 61), // deep navy blue
        Color(0xFF203A43), // dark bluish gray
        Color(0xFF2C5364), // soft teal shade
      ],
    ),
  ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FrostedifyGlassContainer(
                  height: 100,
                  width: double.infinity,
                  child: const Center(
                    child: Text("Frostedify Glass Container", style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
              
               
                 FrostedifyGlassButton(
                      label: "Frostedify Glass Button",
                      icon: Icons.favorite,
                      onPressed: () {},
                    ),
                     const SizedBox(height: 20),
                FrostedifyGlassCard(
                 height: 80,
                 width: 150,
                 
                                  child: Center(child: const Text("Frostedify Glass Card", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => FrostedifyDialog(
                        title: "Hello!",
                        
                        content: "This is a Frostedify glass dialog",
                        onConfirm: () => Navigator.pop(context),
                      ),
                    );
                  },
                  child: const Text("Show Frostedify GlassDialog"),
                ),
                SizedBox(height: 20,),
             Stack(
  children: [
    FrostedifyGlassContainer(
      height: 100,
      child: const Center(child: Text('Frostedify Shimmer Layer')),
    ),
    const Positioned.fill(child: LiquidShimmer()),
  ],

            ),
       
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:      FrostedifyNaviagationBar(
  currentIndex: index,
  onTap: (i) => setState(() => index = i),
  items: [
    FrostedifyNaviagationBootomNavigationClass(icon: Icons.home, label: 'Home'),
    FrostedifyNaviagationBootomNavigationClass(icon: Icons.favorite, label: 'Likes'),
    FrostedifyNaviagationBootomNavigationClass(icon: Icons.person, label: 'Profile'),
      FrostedifyNaviagationBootomNavigationClass(icon: Icons.settings, label: 'Setting'),

  ],
),
    );
  }
}
