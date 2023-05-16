import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lead_contacts_list/user_profile.dart';

import 'api/lead_contact_api.dart';
import 'api/user_profile_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            child: Center(
                child: ElevatedButton(
                    onPressed: () async {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const ContactsList()));

                      LeadContactApi.fetch();
                    },
                    child: Text("Press"))),
          ),
          appBar: AppBar(
            title: Text("Lead Api Intregration"),

            // leading: Container(
            //   child: ElevatedButton(onPressed: () {}, child: Text("Press")),
            // ),
          )),
    );
  }
}
