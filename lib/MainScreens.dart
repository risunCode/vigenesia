import 'package:flutter/material.dart';
import 'package:vigenesia/Screens/Login.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  TextEditingController isiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                // pembuka row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //pembuka children
                  //awal tahap 1
                  Text(
                    "Hallo",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ), // akhir tahap 1
                  TextButton(
                    child: Icon(Icons.logout),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new Login(),
                          ));
                    },
                  ),
                ], // penutup children
              ), //penutup row
              SizedBox(
                height: 30,
              ),
              FormBuilderTextField(
                controller: isiController,
                name: "isi_motivasi",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    print("Sukses");
                  },
                  child: Text("Submit"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(child: Icon(Icons.refresh), onPressed: () {})
            ],
          ),
        )),
      ),
    );
  }
}
