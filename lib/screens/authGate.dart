import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:safeprint/safeprint.dart';



import '../amplifyconfiguration.dart';
import '../models/ModelProvider.dart';
import 'package:movee_aws/main.dart';



class authGate extends StatefulWidget {
  @override
  _authGateState createState() => _authGateState();
}

class _authGateState extends State<authGate> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(api);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


  Future<void> createFormInputs() async {
    try {
      final formInputs = FormInputs(first_name: 'my first todo', second_name: 'test' );
      final request = ModelMutations.create(String);
      final response = await Amplify.API.mutate(request: request).response;

      final createdFormInputs = response.data;
      if (createdFormInputs == null) {
        print('errors: ${response.errors}');
        return;
      }
      print('Mutation result: ${createdFormInputs.first_name}');
    } on ApiException catch (e) {
      print('Mutation failed: $e');
    }
  }


}




