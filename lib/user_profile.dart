import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lead_contacts_list/api/user_profile_model.dart';

import 'api/lead_contact_api.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: LeadContactApi.fetch(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(color: Colors.blue),
              );
            } else {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    ContactsModel contactsModel =
                        ContactsModel.fromJson(snapshot.data[index]);

                    return ListTile(
                      title: Text(contactsModel.phoneNumber.toString()),
                    );
                  });
            }
          }),
    );
  }
}
