import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/color.dart';

class StartUpScreen extends StatefulWidget {
  final String heading;
  final String paragraph;
  final String image;
  final void Function()? onpressed;
  final Widget function;
  const StartUpScreen({
    super.key,
    required this.heading,
    required this.paragraph,
    required this.image,
    required this.onpressed,
    required this.function,
  });

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
          
            Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.blueColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 305,
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 25,
                    right: 40,
                  ),
                  child: Text(
                    widget.heading,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Center(
                child: Container(
                  width: 330,
                  padding: const EdgeInsets.only(
                    left: 25,
                    top: 15,
                    right: 30,
                  ),
                  child: Text(
                    widget.paragraph,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 40),
                child: widget.function,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      widget.image,
                      width: 200,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 70,
                    top: 30,
                    right: 70,
                  ),
                  width: 350,
                  child: ElevatedButton(
                    onPressed: widget.onpressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      fixedSize: const Size(300, 50),
                    ),
                    child: const ListTile(
                      leading: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
