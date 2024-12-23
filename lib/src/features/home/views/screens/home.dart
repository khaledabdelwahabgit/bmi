import 'package:bmi/src/core/widgets/custom_text_field.dart';
import 'package:bmi/src/features/home/views/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    heightController.dispose();
    weightController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextField(
                controller: heightController,
                keyType: TextInputType.number,
                obs: false,
                hintText: 'height',
                label: 'enter height ',
                prifixiconData: Icons.height,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'you have to enter height ';
                  }
                  if (p0.length < 3) {
                    return 'enter valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                keyType: TextInputType.number,
                obs: false,
                controller: weightController,
                label: 'weight',
                hintText: 'enter weight ',
                prifixiconData: Icons.monitor_weight_outlined,
                validator: (p1) {
                  if (p1!.isEmpty) {
                    return 'you have to enter weight ';
                  }
                  return null;
                },
              ),
              MenuItemButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) ;
                  },
                  child: const Text('press'))
            ],
          ),
        ),
      ),
    );
  }
}

// InputBorder border({required double raduis, required Color color}) {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(raduis),
//     borderSide: BorderSide(color: color),
//   );
// }


// // TextField(
// //               keyboardType: TextInputType.number,
//               controller: heightController,
//               decoration: InputDecoration(
//                   label: Text(' height '),
//                   hintText: 'enter height ',
//                   prefixIcon: Icon(Icons.height),
//                   suffix: InkWell(
//                     child: Icon(
//                       Icons.highlight_remove,
//                     ),
//                     onTap: () {
//                       heightController.clear();
//                     },
//                   ),
//                   border: border(raduis: 20, color: Colors.green),
//                   enabledBorder:
//                       border(raduis: 40, color: Colors.yellowAccent)),
//             ),