import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:whiskerwisdom/blocs/cat_fact/cat_fact_bloc.dart';
import 'package:whiskerwisdom/core/utils/datetime_extensions.dart';

import '../injection.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        onPressed: () {
          getIt<CatFactBloc>().add(const CatFactEvent.loadFact());
        },
        label: const Text('Another Fact!'),
        icon: const FaIcon(FontAwesomeIcons.paw),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<CatFactBloc, CatFactState>(
            bloc: getIt<CatFactBloc>(),
            builder: (context, state) {
              return state.map(
                loading: (_) {
                  return LottieBuilder.network(
                    'https://assets9.lottiefiles.com/packages/lf20_xzu7hgpf.json',
                    height: 200,
                    width: 200,
                  );
                },
                loaded: (s) {
                  return Column(
                    children: [
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            'https://cataas.com/cat?timestamp=${DateTime.now().millisecondsSinceEpoch}',
                            fit: BoxFit.cover,
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Card(
                        color: colorScheme.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  s.fact.verified
                                      ? FaIcon(
                                          FontAwesomeIcons.check,
                                          color: colorScheme.onSecondary,
                                        )
                                      : Text(
                                          'Unverified',
                                          style: textTheme.bodySmall?.copyWith(
                                            color: colorScheme.onSecondary,
                                          ),
                                        ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              Expanded(
                                child: Text(
                                  s.fact.text,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary,
                                      ),
                                ),
                              ),
                              Text(
                                s.fact.createdAt.toLocalDateString(),
                                style: textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                error: (_) {
                  return const Text('Error');
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
