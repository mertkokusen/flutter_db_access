import 'package:database_access_layer/generated_entity/acc/cash_order_detail.gen.dart';
import 'package:flutter/material.dart';

//import 'Repositories/cus_agent_repository.gen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: MyHomePage.routeName,
    );
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) {
      return (settings.arguments as RouteArguments).instanceActivator(settings.arguments);
    });
  }
}

abstract class RouteArguments {
  Widget Function(RouteArguments) instanceActivator;
}

abstract class ScreenWidget<T extends RouteArguments> extends StatefulWidget {
  @mustCallSuper
  void navigateTo(BuildContext context, T arguments) {
    Navigator.pushNamed(context, null, arguments: arguments);
  }

  Widget instanceActivator(RouteArguments args);

  ScreenWidget({Key key}) : super(key: key);
}

class MyHomePageRouteArguments extends RouteArguments {}

class MyHomePage extends ScreenWidget<MyHomePageRouteArguments> {
  static const String routeName = "/home";

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

  @override
  void navigateTo(BuildContext context, MyHomePageRouteArguments arguments) {
    arguments.instanceActivator = instanceActivator;
    super.navigateTo(context, arguments);
  }

  @override
  Widget instanceActivator(RouteArguments args) {
    return MyHomePage();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  void _testDB() async {
    //*Standard method from base repo.
    //var agent = await CusAgentRepository().getInstance(25643);
    //print(agent.toMap());

    //*Specialized method for agent repo.
    //agent = await CusAgentRepository().retrieveByIdUser(682599);
    //print(agent.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _testDB,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
