import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore_stream_controller.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movee_aws/screens/authGate.dart';
import 'amplifyconfiguration.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:movee_aws/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:provider/provider.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  final _amplify = Amplify;
  final _FormInputsID = "test";

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() {
    final provider = ModelProvider();
    final dataStorePlugin = AmplifyDataStore(modelProvider: provider);

    // _amplify.addPlugin(dataStorePlugins: [dataStorePlugin]);
    _amplify.configure(amplifyconfig);

    print('Amplify configured');

  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Amplify crud',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Text('hey')
    );
  }

  void create() async {
    final FormInputs = formInputs(
      id: _FormInputsID, value: "test");

    try {
      await Amplify.DataStore.save(FormInputs);

      print ('save ${FormInputs.toString()}');

    } catch(e) {
    } print(e);
  }

  formInputs({required String id, required String value}) {}

}





