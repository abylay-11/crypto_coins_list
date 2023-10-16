import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          dividerColor: Colors.white24,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 31, 31, 31),
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              )
          ),
          listTileTheme: const ListTileThemeData(iconColor: Colors.white),
          textTheme: TextTheme(
              bodyMedium: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              labelSmall: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w700,
                  fontSize: 14))),
      home: const MyHomePage(title: 'Crypto Currencies List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.separated(
          separatorBuilder: (context, i) => const Divider(),
          itemCount: 10,
          itemBuilder: (context, i) => ListTile(
            leading: SvgPicture.asset(
              'assets/svg/bitcoin_logo.svg',
              height: 30,
              width: 30,
            ),
            title: Text('Bitcoin', style: theme.textTheme.bodyMedium),
            subtitle: Text(
              '20000\$',
              style: theme.textTheme.labelSmall,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ));
  }
}
