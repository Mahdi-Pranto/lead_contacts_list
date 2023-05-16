import 'dart:convert';
import 'dart:io';

import 'package:lead_contacts_list/api/user_profile_model.dart';

class LeadContactApi {
  static Future<List> fetch() async {
    //Api url
    String url = 'https://crm.ihelpbd.com/crm/api/crm/contact_list.php';

    try {
      HttpClient httpClient = HttpClient();

      HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));

      // content type
      request.headers.set('content-type', 'application/json');
      request.headers.set('token', 'HTaIHkbvrPpIRuNqpyqxb6Y3W5bMDz0e');

      //Get response
      HttpClientResponse response = await request.close();
      String reply = await response.transform(utf8.decoder).join();

      // Closed request
      httpClient.close();

      final data = jsonDecode(reply);
      print(data);

      if (data['status'] == 200) {
        print(data);
        return data['data'];
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
