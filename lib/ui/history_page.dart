import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whiskerwisdom/core/error/failures.dart';
import 'package:whiskerwisdom/core/utils/datetime_extensions.dart';
import 'package:whiskerwisdom/core/utils/typedefs.dart';
import 'package:whiskerwisdom/facts/domain/repositories/cat_fact_repository.dart';
import 'package:whiskerwisdom/injection.dart';
import 'package:whiskerwisdom/ui/loading_widget.dart';

import '../facts/domain/entities/cat_fact.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late Future<CatFactHistoryResult> future;

  @override
  void initState() {
    future = getIt<CatFactRepository>().fetchCatFactsHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<CatFactHistoryResult>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return data.fold(
              (l) => Text('An error occurred: $l'),
              (r) => ListView.builder(
                itemCount: r.length,
                itemBuilder: (context, index) {
                  final CatFact catFact = r[index];
                  return ListTile(
                    title: Text(catFact.text),
                    subtitle: Text(
                      catFact.createdAt.toLocalDateString,
                    ),
                  );
                },
              ),
            );
          } else {
            return const LoadingWidget();
          }
        },
      ),
    );
  }
}
