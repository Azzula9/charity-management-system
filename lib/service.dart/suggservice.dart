import 'package:charityms/model/suggestion.dart';

import 'dart:convert';
import 'dart:developer';
import 'package:charityms/model/reportmodel.dart';
import 'package:http/http.dart' as http;

import 'dart:io';

class suggestionservice {
  Future<Sugg?> vsugg(Sugg sugg) async {
    http.Response response =
        await http.post(Uri.parse('http://192.168.1.2:8000/api/R_F_Report'),
            headers: {
              HttpHeaders.authorizationHeader:
                  "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjJkNWRmNWI0MDE1YmM5ZjcyOTY5NTMxNmJlNzE3MzNmNWFhMzQyOTNkYzI4Zjk3MThhNDc4MGMxNmFhZDg2MzQ2ODI0OGQyYjBiY2QwMTkiLCJpYXQiOjE2NjAyMjI3NDQsIm5iZiI6MTY2MDIyMjc0NCwiZXhwIjoxNjkxNzU4NzQ0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.TqpYiP2SFDMIkhr0a5m8DNzUv4pBW6xUD008nvAC4xDEXu3jLEG3Dfs73pInsjkX1xzWjknXjqilUOaDa0d-Y2IfOEUbwLKx2qvwhJTbSZKmWGpg5wabbtUZqG4PE_L8YGtcqHdl1IdpvS0edDia0BEwi5PQvqc3HrprAcOPuHrb7XyTbTSv3vLWtGOKdifV7ZgcFJtixrYYMj-wfCrIymaPBbHwjpKUsXTFUkAqQbulluU4MNw--D4hcNIH_PEPdt8OTGr0qdoQgCozBDItdGYb6NDTwWfc1HiCUAL-oOYMGPdmoArzQGvn2K8E1IpL4JUal_TK0CVmFJ_dFq1UpuZDUvzVbio8LdW-JFmgYDuyTpjIxWASI-7KoxpbCaaZp41TfYiH9VEr84jQrTnktRtBbZoqU9T-Os-FK7pwdQ-oXRgtnXyoMfx53rW9dxD4rd9qDyclJXNVJ0R8KEfuWFGxowLhDlrr-G89QA2C7mZvFNEufUJKxLj7fKzhlg-d1AFAVWw3Yilrb9Me3LSQe5tsosLwgptB0UtPFc_X5SqRmy2NpnvWAszv9W6U-voJHLqzL_74splXDmr4pVufLfbH60zkrqRCyaT5qwi63tIWB3xrA8o5xVn5b0e8Qqob620Rd5ycIxOtlUUCPysdcRGpCsNw9kUm4dAH0g7eXxc",
              HttpHeaders.contentTypeHeader: 'application/json',
            },
            body: jsonEncode({
              "value": sugg.value,
            }));
    inspect(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      inspect(response.body);
      Map<String, dynamic> user = jsonDecode(response.body);
      inspect(user);
      return Sugg.fromJson(user);
    } else if (response.statusCode == 404 || response.statusCode == 500) {
      return null;
    }
    print('sadf');
  }
}
